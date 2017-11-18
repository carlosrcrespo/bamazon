// Then create a Node application called bamazonCustomer.js. 

// Running this application will first display all of the items available for sale. 
var mysql = require ("mysql");
var tables = require ("cli-table");
var inquirer = require ("inquirer");
var idOfPurchase = [];

var connection = mysql.createConnection({
	host : "localhost",
	port: 8889,
	user : "root",
	password : "root",
	database : "bamazon"

});

showProductsTable();

// Include the ids, names, and prices of products for sale.
function showProductsTable(){
	
	connection.connect();
	connection.query("SELECT * FROM product", function(error, results){
		
				if(error) throw error;

				//console.log(results);

				//Creating a temporary array to store the object as an array
				var table = new tables({
					
					head:['Item ID', 'Product Name', 'Stock Quantity', 'Item Price']
				
				});

				for (i = 0; i < results.length; i++){
					var tempArray = [];

					for(var key in results[i]){
						
						tempArray.push(results[i][key]);

					}

					table.push(tempArray);


				}
				
				console.log(table.toString());

		
		});
		


		// connection.end(function(err){

		// // The app should then prompt users with two messages. 
		// askQuestions();


		// });

		askQuestions();
		
	}

function askQuestions(){

			inquirer.prompt([{

					type: 'input',
					name: 'q1',
					message: 'What would you like to purchase?'

				}]).then(function(answers){
					console.log(answers.q1);

					var answer1 = answers.q1;

					inquirer.prompt([{
						type: 'input',
						name: 'q2',
						message: 'How many would you like?'	

					}]).then(function(answers){
						console.log(answers.q2);

				//	connection.connect();

					connection.query("SELECT * FROM product WHERE item_id="+answer1,function(error,results){

						console.log(results);
						
					});
					

					})

				});

}


//Ask the question when the table to string runs



// Once the customer has placed the order, your application should check if your store has 
// enough of the product to meet the customer's request. 

// If not, the app should log a phrase like Insufficient quantity!, 
// and then prevent the order from going through. However, 

// if your store does have enough of the product, you should fulfill the customer's order. 

// This means updating the SQL database to reflect the remaining quantity. 

// Once the update goes through, show the customer the total cost of their purchase.