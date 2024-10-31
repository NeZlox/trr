// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.9.0;
pragma experimental ABIEncoderV2;


contract Poster {
    struct Post {
        address user;
        string content;
        string tag;
    }

    // Массив для хранения постов
    Post[] public posts;

    // Событие, которое будет эмитироваться при создании нового поста
    event NewPost(address indexed user, string content, string indexed tag);

    // Функция для публикации поста
    function post(string memory content, string memory tag) public {
        // Создаем новый пост
        posts.push(Post(msg.sender, content, tag));
        // Эмитируем событие
        emit NewPost(msg.sender, content, tag);
    }

    // Функция для получения всех постов
    function getPosts() public view returns (Post[] memory) {
        return posts;
    }
}