NAME			=	libft.a

SRCS			=	$(wildcard ./sources/*.c)

OBJS			=	$(SRCS:.c=.o)

OBJS_BASE		=	$(foreach obj, $(OBJS), $(shell basename $(obj)))

OBJ				=	$(addprefix objects/,$(OBJS_BASE))

CC				=	gcc

AR				=	ar rcs

INCLUDES	 	=	includes

OBJS_DIR		=	./objects

RM				=	rm -f

BIN_DIR			=	./bin

RMDIR			=	rm -rf

MKDIR			=	mkdir

CFLAGS			=	-Wall -Wextra -Werror -I$(INCLUDES)

%.o: %.c
					if [ ! -d $(OBJS_DIR) ]; then $(MKDIR) $(OBJS_DIR); fi
					$(CC) $(CFLAGS) -c $< -o $(OBJS_DIR)/$(shell basename $@)

$(NAME):			$(OBJS) $(OBJ)
					if [ ! -d $(BIN_DIR) ]; then $(MKDIR) $(BIN_DIR); fi
					$(AR) $(BIN_DIR)/$(NAME) $(OBJ)

all:				$(NAME) 

clean:
					$(RMDIR) $(OBJS_DIR)

fclean:				clean
					$(RMDIR) $(BIN_DIR)

re:					fclean all

.PHONY:				all clean fclean re
