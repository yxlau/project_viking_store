## Admin Orders

### Index of All Orders
- [ ] Orders index displays a table properly
- [ ] The columns are as per the mockup
- [ ] UserID links to that user's SHOW page
- [ ] LInks to SHOW/EDIT/DELETE
- [ ] Warning that orders can only be created in user profiles with link to Users INDEX
- [ ] Wire up the links in the User pages which point to that user's orders
- [ ] Limit the display of records if necessary, e.g. 100

### Filtered Orders For a User
- [ ] Providing a valid ID in the parameters filters orders for just that user
- [ ] an invalid parameter renders all orders with an error flash
- [ ] The user's name is clearly displayed
- [ ] The CREATE ORDER button is present (though not yet wired)
- [ ] Limit the display of records if necessary (e.g. 100)

### Show An Order
- [ ] Show page renders
- [ ] Basic info is as per mockup
- [ ] Clickable user link
- [ ] Order ID in header
- [ ] If order has not been placed, title includes words "Shopping Cart"
- [ ] No. of Products calculated
- [ ] Total order value calculated
- [ ] Order status is large and colored appropriately
- [ ] Shipping and billing addresses are displayed
- [ ] Billing card is just the last 4 digits
- [ ] Links to EDIT and DELETE and order
- [ ] Order Contents panel contains all the products inside the order
- [ ] Order Contents links to the product's Show page from the product name
- [ ] Total price is not saved as a column in the database
- [ ] Wire up links in the User's SHOW page which point to specific orders

### New Order
- [ ] Renders the new order page
- [ ] User name is in header
- [ ] Logistical information displayed as per mockup
- [ ] link to user show page
- [ ] Link to edit user's info
- [ ] Dropdowns with user's existing shipping and billing info
- [ ] Will not accept order without those addresses specified and valid (belong to that user)
- [ ] Must accept a billing card as well
- [ ] Billing card must be an int of 16 digits
- [ ] Date placed N/A
- [ ] Text warning that this is a 2-step process to save an order
- [ ] Flash on success/failure
- [ ] Failure re-renders form
- [ ] Success moves on to EDIT form
- [ ] Wire up button in User's profile for creating a new order
- [ ] Only allows one unplaced order per user

### Edit Order
- [ ] Displays edit form with order ID in header
- [ ] Logistical info same as before
- [ ] Date placed only N/A if order hasn't been placed
- [ ] Order Status radio button, defaults to NOT PLACED. Colored.
- [ ] Link to DELETE order
- [ ] Edit Order Contents panel has table with order contents and option to edit quantities
- [ ] Link to REMOVE each order, with confirmation, removes the order and re-renders the page
- [ ] "Update Order Contents" button will update the quantities of the orders
- [ ] Updating orders with quantity 0 will remove that product from the order
- [ ] Adding products to an order form allows up to 5 products to be added using the ProductID and Quanitity
- [ ] If a valid Product ID is sent, make sure a valid Quantity is sent too
- [ ] Adding products to an order form with any duplication adds quantities together.
- [ ] If mostly valid IDs are sent but one fails, cancel the whole operation with an error
- [ ] Apply flash messages to all operations here
- [ ] Successful update of order information in any way should render the SHOW page
- [ ] Only allows one unplaced order per user

### Delete Order
- [ ] Delete links delete with CONFIRMATION
- [ ] Success/failure flashes
- [ ] success: SHOW page
- [ ] failure: BACK (re-render)
- [ ] Destroying an order does NOT destroy all the products it contains or the addresses or credit cards it references


## Navbar
- [ ] Wire Up Navbar


---



### Delete an Address
As an admin
I want to be able to "delete" addresses
If the user cannot do it him/herself
NOTE: Your data architecture might allow for de-associating addresses so they never actually get deleted. If this is the case, make sure to handle the fact that it might be included as a billing/shipping address as well.

- [x] Delete links are wired to delete addresses with CONFIRMATION
- [x] Deleting an address does not destroy the user who linked to it as a billing/shipping address, simply de-associates it
- [x] Success renders Index
- [x] Failure goes BACK
- [x] Flash messages as appropriate
- [x] Deleting a user's address does not break any of that user's views. Specifically, it should not leave any foreign keys pointing to nonexistant addresses.

## FKs on Models

### Addresses
id | user_id | city_id | state_id | ... |

### Credit_cards
id | user_id | ...

### Orders 
id | user_id | shipping_id | billing_id | ...

### Order_contents
id | product_id | order_id | ...

### Products
id | category_id | ...

### Users
id | billing_id | shipping_id | ...

### Categories
id | name 

### Cities
id | name

### States
id | name

## Admin Addresses
### Show an index of all addresses
- [x] The addresses index page renders the table with all database addresses as per the mockup. Note: No phone number needed.
- [x] The User column links to that user's show page
- [x] Links for SHOW / EDIT / DELETE an address
- [x] Disclaimer that addresses can only be created in a User profile, linking to the Users INDEX page

### Filter Index of Addresses by User
- [x] If a user_id is provided as a parameter to the Addresses INDEX path, filter results for only that user
- [x] If an invalid ID is provided, display flash appropriately and render all as normal
- [x] Render a CREATE button to create an address under that user's id
- [x] Wire up the address links in the User pages to link to that user's filtered list of addresses

### Show an Address
- [x] The show page renders
- [x] The information displayed conforms to the mockup
- [x] Link to the User's SHOW page
- [x] User's name in header
- [x] Links to DELETE and EDIT address (not wired yet)
- [x] Wire up links to addresses from other resources like the User pages

### Create a new address
- [x] New page renders
- [x] Fields are present as per the mockup
- [x] ID field is displayed but not editable
- [x] Name field is linked to user's SHOW page
- [x] State is a dropdown pre-populated by states
- [x] User's name is in the header
- [x] Street, city and state must be present
- [x] State must be within the acceptable US states (and territories if you're ambitious)
- [x] Street and city < 64 chars
- [x] The UserID must be a real user
- [x] Success/failure flash messages
- [x] Success renders the user's filtered index page
- [x] failure re-renders the form with errors
- [x] Wire up the New Address button on the User's SHOW page

### Edit an Address
- [x] Edit form renders
- [x] User name is in form name
- [x] Fields as per the mockup
- [x] User ID displayed
- [x] Link to User SHOW page in name
- [x] Link to DELETE (not wired yet)
- [x] Success/Failure Flash as justified
- [x] Success goes to the address's SHOW page
- [x] failure re-renders form with errors

### Delete an Address
As an admin
I want to be able to "delete" addresses
If the user cannot do it him/herself
NOTE: Your data architecture might allow for de-associating addresses so they never actually get deleted. If this is the case, make sure to handle the fact that it might be included as a billing/shipping address as well.

- [x] Delete links are wired to delete addresses with CONFIRMATION
- [x] Deleting an address does not destroy the user who linked to it as a billing/shipping address, simply de-associates it
- [x] Success renders Index
- [x] Failure goes BACK
- [x] Flash messages as appropriate
- [x] Deleting a user's address does not break any of that user's views. Specifically, it should not leave any foreign keys pointing to nonexistant addresses.
<<<<<<< HEAD
=======

## FKs on Models

### Addresses
id | user_id | city_id | state_id | ... |
>>>>>>> f6cba45a95fc659c2ed69696b515e5d992acdf87

## Admin_Users

### Display Index of Users
- [x] Index action displays the index table  
- [x] The table contains the fields shown in the mockup  
- [x] Link to SHOW / EDIT / DELETE (not wired yet)  
- [x] Link to that user's orders (not wired yet)  
- [x] Button to create a new user  

### Show a User
- [x] The show page renders  
- [x] The users name is across the top  
- [x] The relevant information from the mockup is displayed  
- [x] Link to EDIT that user's information  
- [x] Link to DELETE that user (not wired)  
- [x] Link to view that user's ADDRESSES (not wired)  
- [x] Link to view that user's CART (not wired), only clickable if the user actually has a cart!  
- [x] Credit Card info is displayed (NOTE: DONT DO THIS IN THE REAL WORLD)  
- [x] Link to DESTROY the credit card entry functions with a confirmation. Re-renders the page  
- [x] Buttons for CREATE ORDER (not wired) and CREATE ADDRESS (not wired) link to the create pages for these resources but will make them scoped just to this user  
- [x] Order History is displayed with the fields shown.  
- [x] Order History links SHOW EDIT DELETE (not wired)  
- [x] Handles displaying a placeholder for shipping and billing addresses if none have been selected  
- [ ] Add telephone
- [ ] Refactor with presenter pattern

### Create a New User
- [x] New form displays user's name at top  
- [x] Displays demographic info as in the mockup  
- [x] Link to view that user's addresses (not wired)  
- [x] Button to save user  
- [x] Must include submission of first and last name and email  
- [x] fname, lname, email must be 1-64 characters  
- [x] email must have an @  
- [x] Address dropdowns come pre-populated with the user's addresses. For new users, no addresses will be available and this can be disabled.  
- [x] Success/failure flash messages  
- [x] Success renders the SHOW page  
- [x] Failure re-renders the form with errors  

### Edit a User
- [x] Edit displays the same form as new  
- [x] Shows user's name/id in the header  
- [x] All fields are editable as per the mockup  
- [x] Validations and other criteria are as per the NEW story  
- [x] Link to DELETE the user with confirm (not wired)  
- [x] Success/failure flashes  
- [x] success redirects to SHOW  
- [x] failure re-renders form with errors  

### Delete a User
- [x] DELETE links are wired up to destroy the user with CONFIRMATION  
- [x] Deleting does NOT destroy historical records of orders  
- [x] Deleting DOES destroy current shopping cart  
- [x] Deleting DOES destroy credit card info associated with the user  




