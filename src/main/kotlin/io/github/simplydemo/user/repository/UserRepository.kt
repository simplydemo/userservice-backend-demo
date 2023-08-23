package io.github.simplydemo.user.repository

import io.github.simplydemo.user.entity.User
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface UserRepository: JpaRepository<User, Long?> {
    // Already implem
    // fun getById(id: Long): User?
}
