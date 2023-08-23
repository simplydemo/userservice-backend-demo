package io.github.simplydemo.user.repository

import io.github.simplydemo.user.entity.User
import org.springframework.data.domain.PageRequest
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestParam


@Repository
interface UserRepository: JpaRepository<User, Long?> {

}
