# JokerPlus Documentation with Authentication

This documentation site includes a simple client-side authentication system to protect your content.

## Features

- 🔐 **Client-side authentication** - No server required
- 🎨 **Material Design** - Beautiful login interface that matches MkDocs Material theme
- 🌙 **Dark mode support** - Works with light and dark themes
- 📱 **Mobile responsive** - Works on all devices
- ⏰ **Session management** - 24-hour session timeout
- 🔄 **Remember login** - Uses localStorage to remember authenticated users

## Usage

### Accessing the Documentation

1. Navigate to `http://127.0.0.1:8000/` in your browser
2. You'll see a login modal with authentication form
3. Use one of the demo credentials:
   - **Username:** `admin` / **Password:** `admin123`
   - **Username:** `user` / **Password:** `user123`
   - **Username:** `demo` / **Password:** `demo`

### Customizing Authentication

Edit `docs/assets/javascripts/auth.js` to modify:

```javascript
const AUTH_CONFIG = {
    // Change these credentials for production
    users: {
        'your_username': 'your_password',
        'admin': 'secure_password_here'
    },
    sessionTimeout: 24 * 60 * 60 * 1000, // Session duration
    protectedPaths: ['/'] // Paths that require authentication
};
```

### Running the Documentation

1. **Development mode:**
   ```bash
   mkdocs serve
   ```

2. **Production build:**
   ```bash
   mkdocs build
   ```

## Security Notes

⚠️ **Important:** This is a client-side authentication system designed for basic access control. For production use with sensitive data, consider:

- Using server-side authentication
- HTTPS encryption
- More secure password hashing
- Integration with proper user management systems

## File Structure

```
docs/
├── assets/
│   ├── javascripts/
│   │   └── auth.js          # Authentication logic
│   └── stylesheets/
│       ├── auth.css         # Authentication styles
│       └── custom.css       # Custom site styles
└── [other documentation files...]
```

## Deployment

When deploying to production:

1. Change the default passwords in `auth.js`
2. Consider implementing server-side authentication for better security
3. Use HTTPS to protect credentials in transit
4. Test the authentication flow thoroughly

## Troubleshooting

- **Login modal not appearing:** Check browser console for JavaScript errors
- **Styles not loading:** Verify CSS files are properly included in `mkdocs.yml`
- **Authentication not persisting:** Check if localStorage is enabled in browser

---

**Note:** This authentication system is ideal for internal documentation, team wikis, or situations where you need simple access control without complex server infrastructure.