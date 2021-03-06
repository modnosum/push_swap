# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: modnosum <modnosum@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/13 16:41:30 by modnosum          #+#    #+#              #
#    Updated: 2018/09/09 15:42:03 by modnosum         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

MFLAGS			:= --no-print-directory

checker_DIR		:= checker_project
push_swap_DIR	:= push_swap_project
libft_DIR		:= libft

NAME			:= checker push_swap

.MAIN: all
.PHONY: all checker push_swap libft clean fclean re c f

all: $(NAME)
checker:
	@$(MAKE) $(MFLAGS) -C $(checker_DIR) all
	@cp $(checker_DIR)/$@ .
push_swap:
	@$(MAKE) $(MFLAGS) -C $(push_swap_DIR) all
	@cp $(push_swap_DIR)/$@ .
libft:
	@$(MAKE) $(MFLAGS) -C $(libft_DIR) all
c: clean
clean:
	@$(MAKE) $(MFLAGS) -C $(checker_DIR) clean
	@$(MAKE) $(MFLAGS) -C $(push_swap_DIR) clean
	@$(MAKE) $(MFLAGS) -C $(libft_DIR) clean
f: fclean
fclean:
	@$(MAKE) $(MFLAGS) -C $(checker_DIR) fclean
	@rm -Rf checker
	@$(MAKE) $(MFLAGS) -C $(push_swap_DIR) fclean
	@rm -Rf push_swap
	@$(MAKE) $(MFLAGS) -C $(libft_DIR) fclean
re: fclean all

n: norm
norm:
	@$(MAKE) $(MFLAGS) -C $(checker_DIR) norm
	@$(MAKE) $(MFLAGS) -C $(push_swap_DIR) norm
	@$(MAKE) $(MFLAGS) -C $(libft_DIR) norm
