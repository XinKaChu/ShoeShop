package shoeshop.entities;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="ProductSizes")
public class ProductSize {
	@Id
	@GeneratedValue
	Integer id;
	
	//String productId;
	//Integer sizeId;
	
	Integer quantity;
	
	/*
	 * 2 Many to One (ProductId & SizeId)
	 * */
	@ManyToOne
	@JoinColumn(name="ProductId")
	Product product;
	
	@ManyToOne
	@JoinColumn(name="SizeId")
	Size size;
	
	@OneToMany(mappedBy="productSize")
	Collection<OrderDetail> orderDetails;

	public Collection<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(Collection<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Size getSize() {
		return size;
	}

	public void setSize(Size size) {
		this.size = size;
	}
	
	
}
