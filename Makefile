# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: avanhoeg <avanhoeg@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/19 19:12:36 by avanhoeg          #+#    #+#              #
#    Updated: 2015/05/13 15:12:04 by avanhoeg         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC =	ft_isdigit.s \
		ft_isalpha.s \
		ft_isalnum.s \
		ft_bzero.s	 \
		ft_isascii.s \
		ft_isprint.s \
		ft_toupper.s \
		ft_tolower.s \
		ft_strcat.s	 \
		ft_puts.s 	 \
		ft_memset.s	 \
		ft_strlen.s  \
		ft_memcpy.s  \
		ft_strdup.s  \
		ft_cat.s 	 \
		ft_putchar.s \
		ft_putstr.s  \
		ft_strnew.s  \
		ft_strncat.s \
		ft_strchr.s
OBJ =	$(SRC:.s=.o)
NAME =	libfts

POINT_S = $<
POINT_O = $@

all:		$(NAME)

$(NAME):	$(OBJ)
		ar rcs $(NAME).a $(OBJ)
		ranlib $(NAME).a

%.o: %.s
		nasm -f macho64 -o $(POINT_O) $(POINT_S)

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)

test: all
		@gcc -Wall -Werror -Wextra main.c $(NAME).a

re:		fclean all

.PHONY: all clean fclean re

