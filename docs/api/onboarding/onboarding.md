# On Boarding Overview

The Onboarding API provides a comprehensive suite of endpoints for user registration, authentication, and initial account setup. This section covers all operations required to onboard new users and manage their authentication credentials.

## Authentication Methods

The platform supports multiple authentication methods to provide flexibility for users:

### Social Authentication
- **[Login by Social App](login_by_social_app.md)** - Authenticate using third-party social media accounts (Facebook, Google, Apple)

### Credential-Based Authentication
- **[Login by Username](login_by_username.md)** - Standard username/password authentication
- **[Login by PIN](login_by_pin.md)** - Quick authentication using a PIN code

## Registration & Account Creation

New users can create accounts through:

- **[Register](register.md)** - Complete user registration with all required information
- **[Check Username](check_username.md)** - Verify username availability before registration
- **[Username Suggestions](username_suggestions.md)** - Get alternative username suggestions if preferred name is taken
- **[Check Email](check_email.md)** - Validate email address availability
- **[Check Referral Code](check_referral_code.md)** - Validate referral codes during registration

## Account Verification

Email verification and account validation:

- **[Send Verify Code](send_verify_code.md)** - Send verification code to user's email
- **[Verify Code (Main)](verify_code_main.md)** - Verify the main verification code
- **[Verify Code (Local)](verify_code_local.md)** - Verify local verification code
- **[Verify Email](verify_email.md)** - Complete email verification process
- **[Check Email Verification](check_email_verification.md)** - Check email verification status

## Password & PIN Management

Secure credential recovery and reset operations:

### Password Recovery
- **[Verify Account For Reset Password](verify_account_for_reset_password.md)** - Verify account identity before password reset
- **[Reset Password](reset_password.md)** - Reset user password
- **[Recover Username by Email](recover_username_by_email.md)** - Recover forgotten username

### PIN Recovery
- **[Send Verify Code For Reset PIN](send_verify_code_for_reset_pin.md)** - Send verification code for PIN reset
- **[Reset PIN](reset_pin.md)** - Reset user PIN code

## User Preferences & Interests

Personalize user experience during onboarding:

- **[Get Interest List](get_interest_list.md)** - Retrieve available interest categories
- **[Save Member Interest](save_member_interest.md)** - Save user's interest preferences
- **[Update Win Notification Status](update_win_notification_status.md)** - Configure win notification preferences

## Account Status & Balance

Check account information:

- **[Check Balance](check_balance.md)** - Retrieve user's account balance
- **[Join Waitlist](join_waitlist.md)** - Add user to waiting list
- **[Check Waitlist](check_waitlist.md)** - Check waitlist status

## Common Features

All onboarding endpoints share these common characteristics:

- **Encryption**: Sensitive data is encrypted using platform encryption standards (see [Encryption](../../authentication/encryption.md))
- **Platform Support**: All endpoints accept platform-specific parameters (iOS, Android, Web)
- **Error Handling**: Consistent error response format across all endpoints
- **Session Management**: Successful authentication returns session tokens for subsequent API calls


