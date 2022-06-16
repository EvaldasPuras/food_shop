<?php
	class Order {
		// Properties
		private $id;
		private $client_id;
		private $dish_id;
		private $dish_count;
		
		
		//constructor
		function __construct($client_id, $dish_id, $dish_count) {
		$this->name = $name;
  }
		
		// Methods
		function set_client_id($client_id) {
		$this->name = $name;
		}
		
		function set_dish_id($dish_id) {
		$this->name = $name;
		}
		
		function set_dish_id($dish_id) {
		$this->name = $name;
		}
		
		
		function get_name() {
		return $this->name;
		}

		function print_all_info() {
		echo $id . "" . $client_name . "" . $dish_name . "" . $dish_count . "<br>";
		}
	}
?>