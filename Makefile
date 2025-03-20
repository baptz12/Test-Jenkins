CC = gcc
CFLAGS = -Wall -Wextra -Werror -g
NAME = my_program
SRCS = main.c
OBJS = $(SRCS:.c=.o)
TEST_FILE = test_main.c
TEST_EXEC = test_program

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME) $(TEST_EXEC)

re: fclean all

tests_run:
	$(CC) $(CFLAGS) -o $(TEST_EXEC) $(TEST_FILE)
	./$(TEST_EXEC)

.PHONY: all clean fclean re tests_run
