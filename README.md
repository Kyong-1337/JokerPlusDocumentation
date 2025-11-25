# JokerPlus Documentation

A comprehensive API documentation 



- Python 3.8 or higher
- pip (Python package manager)

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/Kyong-1337/JokerPlusDocumentation.git
cd JokerPlusDocumentation
```

### 2. Create Virtual Environment (Recommended)

```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# On Windows:
venv\Scripts\activate
# On macOS/Linux:
source venv/bin/activate
```

### 3. Install Dependencies

```bash
# Install MkDocs with Material theme
pip install mkdocs-material

# Optional: Install additional plugins if needed
pip install mkdocs-mermaid2-plugin
pip install mkdocs-git-revision-date-localized-plugin
```

## Usage

### Development Server

Start the development server to preview your documentation:

```bash
mkdocs serve
```

The documentation will be available at `http://127.0.0.1:8000/`

### Custom Port and Host

To serve on a specific port (e.g., for integration with other services):

```bash
mkdocs serve --dev-addr 127.0.0.1:7242
```

### Building for Production

Generate static HTML files for deployment:

```bash
mkdocs build
```

This creates a `site/` directory with all the static files ready for deployment.

### Clean Build

Remove previous build and create a fresh one:

```bash
mkdocs build --clean
```

## Project Structure

```
JokerPlusDocumentation/
├── docs/                    # Documentation source files
│   ├── index.md            # Homepage
│   ├── code_examples.md    # Code examples and syntax reference
│   ├── changelog.md        # Version history
│   ├── api/                # API documentation
│   │   ├── onboarding/     # User onboarding APIs
│   │   ├── account_settings/
│   │   ├── wallet/
│   │   ├── lottery/
│   │   └── [other API sections]
│   ├── authentication/     # Auth documentation
│   ├── reference/         # Reference materials
│   └── assets/           # Custom styles and scripts
├── mkdocs.yml            # MkDocs configuration
├── README.md            # This file
└── site/               # Generated static files (ignored by git)
```

## Configuration

The main configuration is in `mkdocs.yml`. Key sections include:

- **site_name**: Documentation title
- **site_url**: Base URL for the documentation
- **theme**: Material theme configuration
- **nav**: Navigation structure
- **markdown_extensions**: Enabled Markdown extensions
- **plugins**: Additional functionality

## Customization

### Adding New Pages

1. Create a new `.md` file in the `docs/` directory
2. Add the page to the navigation in `mkdocs.yml`
3. Use Markdown syntax for content

#### Navigation Examples for Beginners

The `nav` section in `mkdocs.yml` defines your site's navigation structure. Here are common patterns:

**Simple Page:**
```yaml
nav:
  - Home: index.md
  - About: about.md
  - Contact: contact.md
```

**Nested Sections:**
```yaml
nav:
  - Home: index.md
  - API Guide:
    - Overview: api/overview.md
    - Authentication: api/auth.md
    - Endpoints: api/endpoints.md
  - Examples:
    - Basic Usage: examples/basic.md
    - Advanced: examples/advanced.md
```

**Real Example from This Project:**
```yaml
nav:
  - Home:
    - Introduction: index.md
    - Code Examples: code_examples.md
  - Authentication:
    - Overview: authentication/overview.md 
    - Encryption: authentication/encryption.md
  - API Endpoints:
    - On Boarding:
      - Overview: api/onboarding/onboarding.md
      - Login: api/onboarding/login_by_username.md
      - Register: api/onboarding/register.md
```

**Adding a New API Section:**

1. **Create the folder structure:**
   ```
   docs/api/payments/
   ├── payments.md
   ├── create_payment.md
   └── refund.md
   ```

2. **Add to navigation in mkdocs.yml:**
   ```yaml
   nav:
     # ... existing items ...
     - API Endpoints:
       # ... existing sections ...
       - Payments:  # ← New section
         - Overview: api/payments/payments.md
         - Create Payment: api/payments/create_payment.md
         - Process Refund: api/payments/refund.md
   ```

**Tips for Navigation:**
- **File paths are relative** to the `docs/` directory
- **Section names** (left side) can be anything you want
- **File paths** (right side) must match actual file locations
- **Indentation matters** - use 2 spaces for each level
- **Order matters** - items appear in the order you list them

### Custom Styling

Edit `docs/assets/stylesheets/custom.css` to add custom styles.

### Adding Code Examples

Use fenced code blocks with language specification:

````markdown
```python
def hello_world():
    return "Hello, JokerPlus!"
```
````

## Deployment Options

### GitHub Pages

```bash
mkdocs gh-deploy
```

### Manual Deployment

1. Run `mkdocs build`
2. Upload the `site/` directory contents to your web server
3. Configure your web server to serve the files

### Docker Deployment

Create a `Dockerfile`:

```dockerfile
FROM nginx:alpine
COPY site/ /usr/share/nginx/html/
EXPOSE 80
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test locally with `mkdocs serve`
5. Submit a pull request

## Troubleshooting

### Common Issues

- **Module not found**: Ensure MkDocs Material is installed (`pip install mkdocs-material`)
- **Port already in use**: Use a different port (`mkdocs serve --dev-addr 127.0.0.1:8001`)
- **Changes not reflecting**: Try `Ctrl+F5` to force refresh or use `mkdocs serve --dirtyreload`

### Getting Help

- Check the [MkDocs documentation](https://www.mkdocs.org/)
- Visit [Material for MkDocs documentation](https://squidfunk.github.io/mkdocs-material/)
- Open an issue in this repository
