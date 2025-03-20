CC = gcc
CFLAGS = -Wall -Wextra -Werror -g
NAME = my_program
SRCS = main.c
OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

tests_run:
	@echo "Lancement des tests..."
	@echo "Test simple : 2 + 3 = 5 ?"
	@printf "Résultat attendu : 5\n"

.PHONY: all clean fclean re tests_run
