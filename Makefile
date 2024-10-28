#  ███▄ ▄███▓ ▄▄▄       ██ ▄█▀▓█████ 
# ▓██▒▀█▀ ██▒▒████▄     ██▄█▒ ▓█   ▀ 
# ▓██    ▓██░▒██  ▀█▄  ▓███▄░ ▒███   
# ▒██    ▒██ ░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ 
# ▒██▒   ░██▒ ▓█   ▓██▒▒██▒ █▄░▒████▒
# ░ ▒░   ░  ░ ▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░
# ░  ░      ░  ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░
# ░      ░     ░   ▒   ░ ░░ ░    ░   
#        ░         ░  ░░  ░      ░  ░

SCRIPT_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
CLASS_PATH := ${SCRIPT_DIR}/build/java
SRC_DIR := ${SCRIPT_DIR}/java
SRC_FILES := ${SRC_DIR}/com/dvippatel/lox/*.java

# Default target
all: compile

# Compile the Java files
compile:
	@mkdir -p ${CLASS_PATH}
	javac -d ${CLASS_PATH} ${SRC_FILES}

# Run the program
run: compile
	java -cp ${CLASS_PATH} com.dvippatel.lox.Lox $(ARGS)

# Clean built files
clean:
	rm -rf ${CLASS_PATH}

.PHONY: all compile run clean
