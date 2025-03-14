#! /usr/bin/bash

curl -X POST "http://127.0.0.1:9880" \
-H "Content-Type: application/json" \
-d @- \
--output out/output-10s.wav << 'EOF'
{
    "refer_wav_path": "/audio/andrew-ref-10s.wav",
    "prompt_text": "Because there's so much snow outside, I think I won't go to the office today and what I'll do instead is stay indoors and make myself some hamburgers and pizza. Does anyone like that idea?",
    "prompt_language": "en",
    "text": "This is a new sentence I want to convert to speech",
    "text_language": "en"
}
EOF