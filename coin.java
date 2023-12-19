@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true, nullable = false, length = 15)
    private String username;

    @Column(nullable = false)
    private String password;

    // Other user profile fields

    // Getters and Setters
}


//UserRepository.java
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByUsername(String username);
}


//UserService.java
@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public User signUp(User user) {
        // Add validation logic
        // Save user to the database
        return userRepository.save(user);
    }

    public User login(String username, String password) {
        // Add validation logic
        // Retrieve user from the database
        return userRepository.findByUsername(username).orElse(null);
    }

    public User saveUserProfile(User user) {
        // Add authentication logic if needed
        // Save/update user profile to the database
        return userRepository.save(user);
    }
}
