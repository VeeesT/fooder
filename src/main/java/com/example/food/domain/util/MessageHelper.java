package com.example.food.domain.util;

import com.example.food.domain.User;

public class MessageHelper {
    public static String getAuthorName(User author) {
        return author != null ? author.getUsername() : "<none>";
    }
}
