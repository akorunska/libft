# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akorunsk <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/28 17:30:40 by akorunsk          #+#    #+#              #
#    Updated: 2018/01/25 12:39:32 by akorunsk         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

PRINTF_SRC_DIR = ./printf_src

GNL_SRC_DIR = ./gnl_src

LIB_SRC_DIR = ./libsrc

SRC = $(shell find $(PRINTF_SRC_DIR) $(GNL_SRC_DIR) $(LIB_SRC_DIR) \
												-type f -name "*.c")

INC = -I printf_src/include/ -I ./

OBJ = $(SRC:.c=.o)

FLAGS = -Wall -Wextra -Werror

CFLAGS = -c $(FLAGS)

LIBNAME = libsrc/libft.a

all: $(NAME)

obj: $(OBJ)

$(NAME) : $(OBJ)
	ar -rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.c
		gcc $(CFLAGS) $(INC) -o $@ $<

clean:
		rm -rf $(OBJ)

fclean:
		rm -rf $(NAME)

re: fclean all

test:
	gcc main.c libftprintf.a
