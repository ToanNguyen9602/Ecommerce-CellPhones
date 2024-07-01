package com.example.ecommerce.responses;

import com.example.ecommerce.models.Order;
import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class OrderResponse {
    private Long id;
    private String fullName;
    private String phone;
    private String email;
    private String address;
    private LocalDateTime orderDate;
    private Double totalPrice;
    private String orderStatus;
    private boolean active;
    private Long userId;

    public static OrderResponse fromOrder(Order order){
        return OrderResponse.builder()
                .id(order.getId())
                .fullName(order.getFullName())
                .phone(order.getPhone())
                .email(order.getEmail())
                .address(order.getAddress())
                .orderDate(order.getOrderDate())
                .totalPrice(order.getTotalPrice())
                .orderStatus(order.getOrderStatus().toString())
                .active(order.isActive())
                .userId(order.getUser().getId())
                .build();
    }
}
