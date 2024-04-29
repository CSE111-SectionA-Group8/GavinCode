#include "./BananaCPU.h"

#include <string>

#define ZERO 0
#define STACK_PTR 29

void BananaCPU::setMemAdressByte(const char num, const int address){
  // std::cout << (int)address << std::endl;
  // std::cout << (address == (uint32_t)7110) << std::endl;
  // std::cout << (address == address) << std::endl;
  // std::cout << (((int)address) == address) << std::endl;
  if ((uint32_t)address == (uint32_t)7110){
    std::cout << (char)num;
    std::cout << "printed" << std::endl;
  }
  memory[address] =  num;
  
}
void BananaCPU::setMemAdressWord(const uint32_t num, const int address) {
  memory[address] = (char)((num >> 24) & 0xFF);
  memory[address+0x1] = (char)((num >> 16) & 0xFF);
  memory[address+0x2] = (char)((num >> 8) & 0xFF);
  memory[address+0x3] = (char)((num) & 0xFF);
}
//change registers to 32 bit and chage mem access to word and byte options
BananaCPU::BananaCPU(
  const std::string& filename)
  : filename_(filename) {
  uint32_t registers[32] = {};
  char memory[0x10000] = {};

  // The following code is from FileAnalyzerFile.cpp
  std::string extension = ".slug";
  // Check if it is of .slug file
  bool valid_extension = 0;
  //std::cout << filename << std::endl;
  //std::cout << "something" << std::endl;
  valid_extension |= ((filename.size() >= extension.size()) && 
  (filename.compare(filename.size() - extension.size(), extension.size(),
  extension) == 0));

  // if (!valid_extension) {
  //   std::cerr << "Unsupported file extension." << std::endl;
  //   return;
  // }

  // Open the file
  std::ifstream file(filename, std::ios::binary | std::ios::ate);

  // Check if file is opened successfully
  if (!file.is_open()) {
    std::cerr << "Error opening file: " << filename << std::endl;
    return;
  }

  // Get the size of the file
  file_size_ = file.tellg();
  char c;
  // Reset file pointer to the beginning
  file.seekg(0, std::ios::beg);
  for(int i = 0x8000; i < 0x10000; i += 0x1){
    //std::cout << i << std::endl;
    file.get(c);
    setMemAdressByte(c, i);
    
    
  }
  
  // Close the file
  file.close();
}

int BananaCPU::reset() {
  // cleanr all of RAM with zeroes
  // Copy data section to RAM
  registers[29] = 0x6100;
  // setup();
  // Begin game loop sequence
  return 0;
}

int BananaCPU::setRegister(const size_t num, const uint32_t val) {
  if (num == ZERO) {
    std::cerr << "Not allowed to modify value of zero register!" << std::endl;
    return 1;
  }
  registers[num] = val;
  return 0;
}

int BananaCPU::setPC(const uint32_t num) {
  pc = num;
  return 0;
}

void BananaCPU::process(const int address){
    
    uint32_t f = 0;
    for(int i = 0x0; i < 0x4; i += 0x1){
      f |= ((uint32_t)getMemAdress(address+i)) << 8*(0x3-i);
    }
    
    uint32_t mask = 0b11111100000000000000000000000000;
    uint32_t opcode = (f&mask) >> 26;
    uint32_t imm;
    uint32_t reg_a;
    uint32_t reg_b;
    uint32_t r;
    uint32_t reg_c;
    uint32_t shift;
    uint32_t func;
    uint32_t add;
    uint32_t cout = 7110;
    switch(opcode){
      
      
      case 0: //Jal
        std::cout << "JAL" << std::endl;
        mask = 0b00000000000000001111111111111111;
        imm = f&mask;
        setRegister(31, getRegister(29)+4);
        setPC(4*imm);
        break;
      case 9: //SB
        //std::cout << "SB" << std::endl;
        mask = 0b00000000000000001111111111111111;
        imm = f&mask;
        mask = 0b00000011111000000000000000000000;
        reg_a = (f&mask) >> 21;
        mask = 0b00000000000111110000000000000000;
        reg_b = (f&mask) >> 16;
        add = getRegister(reg_a)+imm;
        // std::cout << reg_b << std::endl;
        // std::cout << getRegister(reg_b) << std::endl;
        // std::cout << add << std::endl;
        // std::cout << typeid(add).name() <<std::endl;
        // std::cout << typeid((uint32_t)7110).name() <<std::endl;
        // std::cout << 7110 << std::endl;
        // std::cout << (add == cout) << std::endl;
        setMemAdressByte(getRegister(reg_b), add);
        std::cout << (char)getRegister(reg_b);
        setPC(getPC()+4);
        break;
      case 11: //LW
        std::cout << "LW" << std::endl;
        mask = 0b00000000000000001111111111111111;
        imm = f&mask;
        mask = 0b00000011111000000000000000000000;
        reg_a = (f&mask) >> 21;
        mask = 0b00000000000111110000000000000000;
        reg_b = (f&mask) >> 16;
        r = 0;
        for(int i = 0x0; i < 0x4; i += 0x1){
          r |= ((uint32_t)getMemAdress(getRegister(reg_a)+imm+i)) << 8*(0x3-i);
        }
        setRegister(reg_b, r);
        setPC(getPC()+4);
        break;
      case 17: //LBU
        std::cout << "LBU" << std::endl;
        mask = 0b00000000000000001111111111111111;
        imm = f&mask;
        mask = 0b00000011111000000000000000000000;
        reg_a = (f&mask) >> 21;
        mask = 0b00000000000111110000000000000000;
        reg_b = (f&mask) >> 16;
        setRegister(reg_b, getMemAdress(getRegister(reg_a) + imm));
        setPC(getPC()+4);
        break;
      case 23: //J
        std::cout << "J" << std::endl;
        mask = 0b00000000000000001111111111111111;
        imm = f&mask;
        mask = 0b00000011111000000000000000000000;
        reg_a = (f&mask) >> 21;
        mask = 0b00000000000111110000000000000000;
        reg_b = (f&mask) >> 16;
        setPC(4*imm);
        break;
      case 26: //ADDI
      
        //std::cout << "ADDI" << std::endl;
        mask = 0b00000000000000001111111111111111;
        imm = f&mask;
        mask = 0b00000011111000000000000000000000;
        reg_a = (f&mask) >> 21;
        mask = 0b00000000000111110000000000000000;
        reg_b = (f&mask) >> 16;
        
        setRegister(reg_b, getRegister(reg_a) + imm);
        // std::cout << reg_b << std::endl;
        // std::cout << getRegister(reg_b) << std::endl;
        setPC(getPC()+4);
        break;
      case 30: //SW
        std::cout << "SW" << std::endl;
        mask = 0b00000000000000001111111111111111;
        imm = f&mask;
        mask = 0b00000011111000000000000000000000;
        reg_a = (f&mask) >> 21;
        mask = 0b00000000000111110000000000000000;
        reg_b = (f&mask) >> 16;
        setMemAdressWord(getRegister(reg_b), getRegister(reg_a)+imm);
        setPC(getPC()+4);
        break;
      case 53: //BNE
        std::cout << "BNE" << std::endl;
        mask = 0b00000000000000001111111111111111;
        imm = f&mask;
        mask = 0b00000011111000000000000000000000;
        reg_a = (f&mask) >> 21;
        mask = 0b00000000000111110000000000000000;
        reg_b = (f&mask) >> 16;
        if(getRegister(reg_a) != getRegister(reg_b)){
          setPC(imm*4);
        } else {
          setPC(getPC()+4);
        }
        
        break;
      case 60: //BEQ
        std::cout << "BEQ" << std::endl;
        mask = 0b00000000000000001111111111111111;
        imm = f&mask;
        mask = 0b00000011111000000000000000000000;
        reg_a = (f&mask) >> 21;
        mask = 0b00000000000111110000000000000000;
        reg_b = (f&mask) >> 16;
        if(getRegister(reg_a) == getRegister(reg_b)){
          setPC(imm*4);
        } else {
          setPC(getPC()+4);
        }
        break;
      case 4: //R-type
        mask = 0b00000000000000000000000000111111;
        func = (f&mask);
        switch(func){
          
          case 0: //NOR
            std::cout << "NOR" << std::endl;
            mask = 0b00000011111000000000000000000000;
            reg_a = (f&mask) >> 21;
            mask = 0b00000000000111110000000000000000;
            reg_b = (f&mask) >> 16;
            mask = 0b00000000000000001111100000000000;
            reg_c = (f&mask) >> 11;
            
            setRegister(reg_c, !(getRegister(reg_a) | getRegister(reg_b)));
            setPC(getPC()+4);
            break;
          case 2: //ADD
            std::cout << "ADD" << std::endl;
            mask = 0b00000011111000000000000000000000;
            reg_a = (f&mask) >> 21;
            mask = 0b00000000000111110000000000000000;
            reg_b = (f&mask) >> 16;
            mask = 0b00000000000000001111100000000000;
            reg_c = (f&mask) >> 11;
            
            setRegister(reg_c, (getRegister(reg_a) + getRegister(reg_b)));
            setPC(getPC()+4);
            break;
          case 20: //OR
            std::cout << "OR" << std::endl;
            mask = 0b00000011111000000000000000000000;
            reg_a = (f&mask) >> 21;
            mask = 0b00000000000111110000000000000000;
            reg_b = (f&mask) >> 16;
            mask = 0b00000000000000001111100000000000;
            reg_c = (f&mask) >> 11;
            
            setRegister(reg_c, (getRegister(reg_a) | getRegister(reg_b)));
            setPC(getPC()+4);
            break;
          case 32: //SLT
            std::cout << "SLT" << std::endl;
            mask = 0b00000011111000000000000000000000;
            reg_a = (f&mask) >> 21;
            mask = 0b00000000000111110000000000000000;
            reg_b = (f&mask) >> 16;
            mask = 0b00000000000000001111100000000000;
            reg_c = (f&mask) >> 11;
            
            
            setRegister(reg_c, (getRegister(reg_a) < getRegister(reg_b)));
            setPC(getPC()+4);
            break;
          case 39: //SRA
            std::cout << "SRA" << std::endl;
            mask = 0b00000000000111110000000000000000;
            reg_b = (f&mask) >> 16;
            mask = 0b00000000000000001111100000000000;
            reg_c = (f&mask) >> 11;
            mask = 0b00000000000000000000011111000000;
            shift = (f&mask) >> 6;
            
            setRegister(reg_c, (signed)(getRegister(reg_b) >> shift));
            setPC(getPC()+4);
            break;
          case 40: //AND
            std::cout << "AND" << std::endl;
            mask = 0b00000011111000000000000000000000;
            reg_a = (f&mask) >> 21;
            mask = 0b00000000000111110000000000000000;
            reg_b = (f&mask) >> 16;
            mask = 0b00000000000000001111100000000000;
            reg_c = (f&mask) >> 11;
            
            
            setRegister(reg_c, (getRegister(reg_a) & getRegister(reg_b)));
            setPC(getPC()+4);
            break;
          case 44: //SRL
            std::cout << "SRL" << std::endl;

            mask = 0b00000000000111110000000000000000;
            reg_b = (f&mask) >> 16;
            mask = 0b00000000000000001111100000000000;
            reg_c = (f&mask) >> 11;
            mask = 0b00000000000000000000011111000000;
            shift = (f&mask) >> 6;
            
            setRegister(reg_c, (unsigned)(getRegister(reg_b) >> shift));
            setPC(getPC()+4);
            break;
          case 45: //SUB
            std::cout << "SUB" << std::endl;
            mask = 0b00000011111000000000000000000000;
            reg_a = (f&mask) >> 21;
            mask = 0b00000000000111110000000000000000;
            reg_b = (f&mask) >> 16;
            mask = 0b00000000000000001111100000000000;
            reg_c = (f&mask) >> 11;
            
            
            setRegister(reg_c, (getRegister(reg_a) - getRegister(reg_b)));
            setPC(getPC()+4);
            break;
          case 54: //SLL
          
            std::cout << "SLL" <<std::endl;
            mask = 0b00000000000111110000000000000000;
            reg_b = (f&mask) >> 16;
            mask = 0b00000000000000001111100000000000;
            reg_c = (f&mask) >> 11;
            
            
            setRegister(reg_c, (getRegister(reg_b) << shift));
            setPC(getPC()+4);
            break;
          case 63: //JR
          
            std::cout << "JR" <<std::endl;
            mask = 0b00000011111000000000000000000000;
            reg_a = (f&mask) >> 21;
            setPC(getRegister(reg_a));
            std::cout << "after set pc" <<std::endl;
            
          default:
            std::cout << "default 4" <<std::endl;
            setPC(getPC()+4);
            

        }
      default:
        std::cout << "default non 4" <<std::endl;
        setPC(getPC()+4);
        break;
    } 

}








