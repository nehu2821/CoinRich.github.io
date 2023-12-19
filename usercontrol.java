@RestController
@RequestMapping("/api/users")
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/signup")
    public ResponseEntity<User> signUp(@RequestBody User user) {
        User newUser = userService.signUp(user);
        // Return appropriate response
    }

    @PostMapping("/login")
    public ResponseEntity<User> login(@RequestParam String username, @RequestParam String password) {
        User user = userService.login(username, password);
        // Return appropriate response
    }

    @PostMapping("/save-profile")
    public ResponseEntity<User> saveUserProfile(@RequestBody User user) {
        User updatedUser = userService.saveUserProfile(user);
        // Return appropriate response
    }
}
