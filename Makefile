# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afeuerst <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/16 14:08:34 by afeuerst          #+#    #+#              #
#    Updated: 2020/01/17 09:37:04 by afeuerst         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_ping

SOURCES_DIR = ./sources
INCLUDES_DIR = ./includes

SOURCES = $(shell find $(SOURCES_DIR) -type f | grep "\.c")
INCLUDES = $(shell find $(INCLUDES_DIR) -type f | grep "\.h")

FLAGS = 

all: $(NAME)

$(NAME): $(SOURCES) $(INCLUDES)
	gcc $(FLAGS) $(SOURCES) -I $(INCLUDES_DIR) -o $(NAME)

fclean:
	rm -rf $(NAME)

re: fclean
