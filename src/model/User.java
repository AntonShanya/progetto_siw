package model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;


@Entity
@Table(name = "users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable=false)
	private String name;

	@Column(nullable=false)
	private String lastname;

	@Column(nullable=false, unique = true)
	private String email;

	@Column(nullable=false)
	private String password;

	@Column(nullable=false)
	@Temporal(TemporalType.DATE)
	private Date dateOfBirth;

	@Column
	@Temporal(TemporalType.TIMESTAMP)
	private Date registrationDate;

	@OneToMany(mappedBy="user", fetch=FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
	private List<Order> orders;

	@OneToOne(cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
	private Address address;

	public User(){
		this.registrationDate = new Date();
		this.orders = new ArrayList<Order>();
	}

	public User(String name, String lastname, String email, String password,
			Date dateOfBirth, Address address) {
		super();
		this.name = name;
		this.lastname = lastname;
		this.email = email;
		this.password = password;
		this.dateOfBirth = dateOfBirth;
		this.registrationDate = new Date();
		this.orders = new ArrayList<Order>();
		this.address = address;
	}
	
	public void addOrder(Order order){
		this.orders.add(order);
	}

	
	public Long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Date getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public void setId(Long id) {
		this.id = id;
	}
}
