NAME    = philo

CC      = cc
CFLAGS  = -Wall -Wextra -Werror -pthread

SRC_DIR = src
SRC     = $(SRC_DIR)/main.c

OBJ_DIR = obj
OBJ     = $(SRC:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

all: $(NAME)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c philo.h | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re