# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aldgonza <aldgonza@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/13 17:28:12 by aldgonza          #+#    #+#              #
#    Updated: 2022/07/18 18:26:19 by aldgonza         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libftprintf.a
HEADER	= include/ft_printf.h
SRCS	= src/ft_printf.c \
		src/ft_utils.c \
		libft/ft_putstr_fd.c \
		libft/ft_putnbr_fd.c \
		libft/ft_putchar_fd.c \
		libft/ft_strlen.c \
		src/ft_print_p.c \
		src/ft_print_uint.c \
		src/ft_hex.c \
		src/ft_printx.c \

CC		= gcc
CFLAGS	= -Wall -Wextra -Werror
OBJS	= ${SRCS:%.c=%.o}

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME): ${HEADER} ${OBJS}
		ar rc $(NAME) $(OBJS)


all: $(NAME)


clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
