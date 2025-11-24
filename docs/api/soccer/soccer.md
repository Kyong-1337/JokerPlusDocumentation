# Soccer API

Documentation for Soccer API endpoints.

## Endpoints

### Get Soccer Matches

```http
GET /api/soccer/matches
```

**Description:** Retrieve a list of soccer matches.

**Response:**

```json
{
  "status": "success",
  "data": []
}
```

---

### Get Match Details

```http
GET /api/soccer/match/{id}
```

**Description:** Retrieve details for a specific match.

**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| id | string | Match ID |

**Response:**

```json
{
  "status": "success",
  "data": {}
}
```
