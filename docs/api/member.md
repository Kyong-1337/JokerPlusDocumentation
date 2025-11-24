# Member API

Documentation for Member API endpoints.

## Endpoints

### Get Member Profile

```http
GET /api/member/profile
```

**Description:** Retrieve member profile information.

**Response:**

```json
{
  "status": "success",
  "data": {
    "username": "user001",
    "email": "user@example.com",
    "created_at": "2025-01-01T00:00:00Z"
  }
}
```

---

### Update Member Profile

```http
PUT /api/member/profile
```

**Description:** Update member profile information.

**Request Body:**

```json
{
  "email": "newemail@example.com",
  "phone": "+1234567890"
}
```

**Response:**

```json
{
  "status": "success",
  "message": "Profile updated successfully"
}
```

---

### Register Member

```http
POST /api/member/register
```

**Description:** Register a new member.

**Request Body:**

```json
{
  "username": "newuser",
  "password": "securepassword",
  "email": "user@example.com"
}
```

**Response:**

```json
{
  "status": "success",
  "user_id": "usr_123456"
}
```
