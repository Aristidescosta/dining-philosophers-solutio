#include "../philo.h"

static int	valid_args(int argc, char **argv)
{
	int	i;
	int	j;

	if (argc < 5 || argc > 6)
		return (0);
	i = 1;
	while (i < argc)
	{
		j = 0;
		while (argv[i][j])
		{
			if (argv[i][j] < '0' || argv[i][j] > '9')
				return (0);
			j++;
		}
		if (argv[i][0] == '0')
			return (0);
		i++;
	}
	return (1);
}

int	main(int argc, char **argv)
{
	if (!valid_args(argc, argv))
	{
		write(2, "Error: Invalid arguments\n", 25);
		return (1);
	}
	
	printf("DINING PHILOSOPHERS SOLUCTION\n");
	return (0);
}
