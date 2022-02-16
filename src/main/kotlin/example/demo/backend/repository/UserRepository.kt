package example.demo.backend.repository

import example.demo.backend.entity.User
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface UserRepository: JpaRepository<User, Long?> {
    // Already implem
    // fun getById(id: Long): User?
}