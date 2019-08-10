RED =		\033[31m
BOLD_RED =	\033[31m
GRE =		\033[32m
YEL =		\033[33m
BOLD_YEL =	\033[1;33m
BLU =		\033[34m
PUR =		\033[94m
PIN =		\033[1;35m
PRR =		\033[0;36m
BOLD_STD =	\033[1;39m
STD =		\033[0;39m

COLLEEN =	Colleen
GRACE =		Grace
SULLY =		Sully

SRCS =		Colleen.c	\
			Grace.c		\
			Sully.c

ODIR =		./objs/

OBJS =		$(SRCS:%.c=%.o)
OBCC =		$(addprefix $(ODIR),$(OBJS))

CFLAGS = -Wall -Wextra -Werror

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): header $(OBCC)
	@echo "  ${PUR}++ Compilation ++ :${BOLD_STD} DrQuine"
	@gcc $(CFLAG) -o $@ $(ODIR)/$@.o

$(GRACE): $(OBCC)
	@gcc $(CFLAG) -o $@ $(ODIR)/$@.o

$(SULLY): $(OBCC)
	@gcc $(CFLAG) -o $@ $(ODIR)/$@.o
	@echo "  ${PIN}Compilation terminee !${STD}"

$(ODIR)%.o: %.c
	@echo "  ${PUR}+Compilation :${BOLD_STD} $^"
	@mkdir -p $(ODIR)
	@gcc $(CFLAGS) -c $< -o $@

header:
	@echo "${BOLD_YEL}"
	@echo "  ======================"
	@echo "  |   Projet DrQuine   |"
	@echo "  ======================"
	@echo "${BOLD_STD}"

clean: header
	@echo "  ${BOLD_RED}-Delete all object files${BOLD_STD}"
	@rm -rf $(ODIR)
	@rm -f $(OBCC)

fclean: clean
	@rm -f $(COLLEEN) $(GRACE) $(SULLY)
	@echo "  ${BOLD_RED}-Delete objects and binary${BOLD_STD}"

re: fclean all
