// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TradePayment {

    struct Order {
        address buyer;
        address seller;
        uint256 amount;
        bool isDelivered;
        bool isPaid;
    }

    mapping(uint256 => Order) public orders;
    uint256 public orderCount;

    event OrderCreated(uint256 orderId, address buyer, address seller, uint256 amount);
    event DeliveryConfirmed(uint256 orderId);
    event PaymentReleased(uint256 orderId, uint256 amount);

    function createOrder(address _seller) external payable returns (uint256) {
        require(msg.value > 0, "Payment must be greater than 0");
        orderCount++;
        orders[orderCount] = Order({
            buyer: msg.sender,
            seller: _seller,
            amount: msg.value,
            isDelivered: false,
            isPaid: false
        });
        emit OrderCreated(orderCount, msg.sender, _seller, msg.value);
        return orderCount;
    }

    function confirmDelivery(uint256 _orderId) external {
        Order storage order = orders[_orderId];
        require(msg.sender == order.buyer, "Only buyer can confirm");
        require(!order.isDelivered, "Already confirmed");
        require(!order.isPaid, "Already paid");
        order.isDelivered = true;
        order.isPaid = true;
        payable(order.seller).transfer(order.amount);
        emit DeliveryConfirmed(_orderId);
        emit PaymentReleased(_orderId, order.amount);
    }

    function getOrder(uint256 _orderId) external view returns (
        address buyer, address seller, uint256 amount,
        bool isDelivered, bool isPaid
    ) {
        Order storage order = orders[_orderId];
        return (order.buyer, order.seller, order.amount, order.isDelivered, order.isPaid);
    }
}