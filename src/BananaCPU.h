#pragma once

#include <cstdint>
#include <cstddef>
#include <iostream>
#include <fstream>

class BananaCPU {
  private:
    std::string filename_;
    size_t file_size_;
    uint32_t registers[32];
    char memory[0x10000];
    uint32_t pc = 0x0000; // program counter
    uint32_t immediate = 0;
  public:
  BananaCPU(const std::string& filename);
  std::string filename() const {return filename_;};
  size_t file_size() const { return file_size_; }
    int reset();
    uint32_t getRegister(const size_t num) const {return registers[num];};
    int setRegister(const size_t num, const uint32_t val);
    uint32_t getPC() const {return pc;};
    int setPC(const uint32_t num);
    char getMemAdress(const int address) const {return memory[address];};
    void setMemAdressByte(const char num, const int address);
    void setMemAdressWord(const uint32_t num, const int address);
    int setup();
    void process(const int address);
};