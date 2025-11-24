# Wallet API

Documentation for Wallet API endpoints.

## Endpoints

### Get Balance

```http
GET /api/wallet/balance
```

**Description:** Retrieve wallet balance.

**Response:**

```json
{
  "status": "success",
  "balance": 0.00
}
```

---

### Deposit

```http
POST /api/wallet/deposit
```

**Description:** Deposit funds into wallet.

**Request Body:**

```json
{
  "amount": 100.00,
  "currency": "USD"
}
```

**Response:**

```json
{
  "status": "success",
  "transaction_id": "txn_123456"
}
```

---

### Withdraw

```http
POST /api/wallet/withdraw
```

**Description:** Withdraw funds from wallet.

**Request Body:**

```json
{
  "amount": 50.00,
  "currency": "USD"
}
```

**Response:**

```json
{
  "status": "success",
  "transaction_id": "txn_789012"
}
```
