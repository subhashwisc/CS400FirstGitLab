# defining the compiler
JAVAC = javac

# defining the target file to compile
TARGET = Main

# defining the source files
SOURCES = Main.java Color.java

# defining the class files
CLASSES = $(SOURCES:.java=.class)

# this is the default rule
all: $(CLASSES)
	@echo "All classes are compiled"

# this rule is to compile .java to .class
%.class: %.java
	$(JAVAC) $<

# this rule is to run the program 
run: all
	java $(TARGET)

# cleans up .class files
clean: 
	rm -f *.class

.PHONY: all run clean



