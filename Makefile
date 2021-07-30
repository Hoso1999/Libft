BIN_DIR			=	bin

NAME			=	$(BIN_DIR)/libft.a

SRCS_DIR		=	sources

OBJS_DIR		=	objects

SRCS			=	$(wildcard sources/*.c)

OBJS			=	$(patsubst sources/%.c, objects/%.o, $(SRCS))

CC				=	gcc

AR				=	ar rcs

INCLUDES	 	=	includes

RM				=	rm -f

RMDIR			=	rm -rf

MKDIR			=	mkdir -p

CFLAGS			=	-Wall -Wextra -Werror -I$(INCLUDES)

$(OBJS_DIR)/%.o: $(SRCS_DIR)/%.c
					@if [ ! -d $(OBJS_DIR) ]; then $(MKDIR) $(OBJS_DIR); fi
					$(CC) $(CFLAGS) -c $< -o $@

all:				$(NAME)

$(NAME):			$(OBJS)
					@if [ ! -d $(BIN_DIR) ]; then $(MKDIR) $(BIN_DIR); fi
					$(AR) $(NAME) $(OBJS)

clean:
					$(RMDIR) $(OBJS_DIR)

fclean:				clean
					$(RMDIR) $(BIN_DIR)

re:					fclean all

.PHONY:				all clean fclean re 
