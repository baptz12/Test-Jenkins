CC = gcc
CFLAGS = -Wall -Wextra -Werror -g
NAME = my_program
SRCS = main.c
OBJS = $(SRCS:.c=.o)
TEST_FILE = test_main.c

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME) test_program

re: fclean all

tests_run:
	$(CC) $(CFLAGS) -o test_program $(TEST_FILE) $(SRCS) -lcriterion --coverage
	./test_program

.PHONY: all clean fclean re tests_run
