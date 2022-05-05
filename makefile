

PROJ_NAME = ACTIVITY
SRC = fun.c main.c 
ifdef OS
	RM = del /q
	FixPath= $(subst /,\,$l)
	EXEC=exe 
else
	ifeq ($(shell uname), Linux)
		RM = rm -rf
		FixPath = $Linux
		EXEC = out
	endif
endif	

Build :$(SRC)
	gcc $(SRC) -Iinc -o $(call FixPath,$(PROJ_NAME).$(EXEC))

Run : Build
	./$(call FixPath,$(PROJ_NAME).$(EXEC))

Clean :
	$(RM) $(call FixPath,$(BUILD_DIR)/*.out)