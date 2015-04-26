package com.example.stateful;
import java.util.ArrayList;
import java.util.Collection;
import javax.annotation.PostConstruct;
import javax.ejb.Stateful;

@Stateful(name="CartBean", mappedName="EJB3-CartBean")
public class CartBean implements Cart
{
	private ArrayList<String> items;
	
	@PostConstruct
	public void initialize()
	{
		items=new ArrayList<String>();
	}
	public void addItem(String item)
	{
		items.add(item);
	}
	public void removeItem(String item)
	{
		items.remove(item);
	}
	public Collection<String> getItems()
	{
		return items;
	}
}