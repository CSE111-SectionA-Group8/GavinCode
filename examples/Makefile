.PHONY : format verify-format

SOURCES := hello_world.cpp

format:
	clang-format ${SOURCES} -i --style=Google

verify-format:
	clang-format ${SOURCES} --dry-run --Werror --style=Google
