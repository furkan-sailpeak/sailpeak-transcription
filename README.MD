# Sailpeak Meeting Transcription

Free AI-powered meeting transcription using Whisper and Google APIs.

## Features

- 🎙️ Free Whisper transcription (no API keys needed)
- 📁 Google Drive integration
- 📧 Gmail API for email delivery
- 🎨 Sailpeak branded interface
- 🚀 Railway deployment ready

## Setup

### 1. Google Service Account

1. Go to [Google Cloud Console](https://console.cloud.google.com)
2. Create a new project
3. Enable Drive API and Gmail API
4. Create a Service Account
5. Download the JSON key file
6. Copy the entire JSON content

### 2. Railway Deployment

1. Fork this repository
2. Connect to Railway
3. Add environment variable:
   - `GOOGLE_SERVICE_ACCOUNT_JSON`: Paste the entire JSON content
4. Deploy!

### 3. Usage

1. Share your Google Drive file with the service account email
2. Paste the Drive link in the web app
3. Enter your email
4. Get transcription via email

## Service Account Setup

The service account email will be something like:
`your-service@your-project.iam.gserviceaccount.com`

Users need to share their Drive files with this email address.

## File Structure

```
sailpeak-transcription/
├── app.py              # Main Flask application
├── templates/
│   └── index.html      # Web interface
├── requirements.txt    # Python dependencies
├── Dockerfile         # Docker configuration
├── railway.toml       # Railway configuration
├── .env              # Environment variables
├── .gitignore        # Git ignore
└── README.md         # Documentation
```

## Local Development

```bash
# Clone repository
git clone <your-repo>
cd sailpeak-transcription

# Install dependencies
pip install -r requirements.txt

# Set environment variable
export GOOGLE_SERVICE_ACCOUNT_JSON='{"type": "service_account", ...}'

# Run locally
python app.py
```

## How It Works

1. **File Access**: Service account accesses shared Google Drive files
2. **Transcription**: Local Whisper model processes audio (100% free)
3. **Email**: Gmail API sends formatted results
4. **Background**: Threading handles long transcription jobs

## Troubleshooting

- **"File not found"**: Make sure file is shared with service account
- **"Permission denied"**: Check service account has correct scopes
- **"Out of memory"**: Large files may need more Railway resources

## Cost

- **Whisper**: 100% free (runs locally)
- **Railway**: Free tier available
- **Google APIs**: Free quotas (generous limits)

Total cost: $0 for moderate usage!