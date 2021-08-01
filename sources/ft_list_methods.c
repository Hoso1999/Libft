#include "clist.h"







void ft_list_push_back(list_t *self, void *data)
{
	node_t *tmp;
	
	tmp = ft_node_constructor(data);
	self->end->insert_before(self->end, tmp);
	if (self->size == 0)
		self->begin = tmp;
	++self->size;
}

void ft_list_push_front(list_t *self, void *data)
{
	node_t *tmp;
	
	tmp = ft_node_constructor(data);
	if (self->size == 0)
		self->end->insert_before(self->end, tmp);
	else
		self->begin->insert_before(self->begin, tmp);
	self->begin = tmp;
	++self->size;
}



void ft_list_pop_front(list_t *self)
{
	node_t *tmp;

	if (self->size == 1)
	{
		ft_memdel((void **)&self->begin);
		self->begin = self->end;
		self->end->previous = NULL;
	}
	else if(self->size >= 1)
	{
		tmp = self->begin->next;
		if (self->begin->previous)
			self->begin = self->begin->next;
		if (self->begin->next)
			self->begin = self->begin->previous;	
		ft_memdel((void **)&self->begin);
		self->begin = tmp;
	}
	--self->size;
}
void	ft_list_pop_back(list_t *self)
{
	node_t *tmp;

	if (self->size == 1)
		self->pop_front(self);
	else if (self->size >= 1)
	{
		tmp = self->end->previous;	
		if (self->end->previous->previous)
			self->end->previous = self->end;
		if (self->end)
			self->end->previous = self->end->previous->previous;	
		ft_memdel((void **)&tmp);
		--self->size;
	}
}









