#include <fstream>
#include <iostream>
#include <vector>


#include "Banana.h"
#include "CLI/CLI.hpp"



int main (int argc, char* argv[]) {
    std::string filename;
    CLI::App app{"Program to read a file specified as command-line argument"};

    app.add_option("filename", filename, "File to read")->required();
    filename = argv[1];
    
    BananaCPU c(filename);
    
    // std::cout << (int)c.getMemAdress(0x8280) <<std::endl;
    // std::cout << (int)c.getMemAdress(0x8281) <<std::endl;
    // std::cout << (int)c.getMemAdress(0x8282) <<std::endl;
    // std::cout << (int)c.getMemAdress(0x8283) <<std::endl;
    // std::cout << (int)c.getMemAdress(0x8200) <<std::endl;
    
    for(int i = 0x8280; i < 0x82e0; i+=0x4){
        //std::cout << std::hex << i << std::endl;
        c.process(i);
    }
    // std::cout << (int)c.getRegister(2) << std::endl;
    std::cout << "" << std::endl;
    // std::cout << (int)c.getPC() << std::endl;
}