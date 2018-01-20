/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: akorunsk <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/10/23 20:49:00 by akorunsk          #+#    #+#             */
/*   Updated: 2017/10/27 10:15:45 by akorunsk         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_strcmp(char *s1, char *s2)
{
	int j;

	j = 0;
	while ((unsigned char)s1[j] == (unsigned char)s2[j] && \
			s1[j] != '\0' && s2[j] != '\0')
	{
		j++;
	}
	return ((unsigned char)s1[j] - (unsigned char)s2[j]);
}