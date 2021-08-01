#include "clist.h"

void	ft_node_destructor(node_t *self)
{
	self->previous = NULL;
	self->next = NULL;
	self->data = NULL;
	ft_memdel((void **)&self);
}

void	ft_list_destructor(list_t *self)
{
	while (self->begin->next)
	{
		self->begin = self->begin->next;
		ft_node_destructor(self->begin->previous);
	}
	self->begin = NULL;
	self->end = NULL;
	self->size = 0;
}

