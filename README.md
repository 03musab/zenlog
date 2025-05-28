# 🧘‍♂️ ZenLog – Track Your Mood, Goals & Mental Wellness

**ZenLog** is a modern, user-friendly web application designed to support your mental well-being. It offers tools for tracking your mood, monitoring sleep, practicing mindfulness, and setting personal goals. Whether you're looking to manage stress, improve your emotional awareness, or build better habits, **ZenLog** is your companion on the journey to a more mindful life.

![ZenLog Demo](http://zenlog.byethost16.com)

## 🌟 Features

- **🌈 Mood Tracker**  
  Log daily moods and visualize trends through intuitive charts powered by Chart.js

- **📝 Daily Reflections**  
  Answer AI-curated prompts to reflect on emotions and identify patterns or triggers

- **😴 Sleep Tracker**  
  Record sleep duration, get recommendations based on age, and receive personalized feedback

- **🧘 Mindful Activities**  
  Access calming breathing exercises, mindfulness challenges, and nature-based tasks to reduce stress

- **🎯 Personal Goals**  
  Set, achieve, and track mental wellness goals with interactive controls and progress indicators

- **📱 Responsive Design**  
  Fully optimized for both desktop and mobile use

- **💫 Smooth UI/UX**  
  Includes subtle animations, interactive elements, and a clean, calming interface

## 🛠️ Tech Stack

| Component | Technology |
|-----------|------------|
| Frontend | HTML, CSS, JavaScript (Vanilla) |
| Backend | PHP + MySQL |
| Charts | Chart.js |
| AI Support | OpenAI API |

## 📂 Project Structure

```
zenlog/
├── dashboard.html          # Main dashboard interface
├── dashboard.php           # PHP version with backend integration
├── styles.css              # Main stylesheet with responsive design
├── tracker.html            # Sleep tracking interface
├── activities.html         # Mindful exercises and challenges
├── js/
│   ├── goal.js            # Goal setting and tracking logic
│   ├── mood.js            # Mood logging and analysis
│   └── chatbot.js         # OpenAI API integration
├── php/
│   ├── add-goal.php       # Add new goals endpoint
│   ├── fetch-goals.php    # Retrieve goals data
│   ├── mood-data.php      # Mood tracking backend
│   └── config.php         # Database configuration
├── sql/
│   └── schema.sql         # Database structure
└── .env.example           # Environment variables template
```

## ⚙️ Getting Started

### Prerequisites
- Web server (Apache/Nginx)
- PHP 7.4+
- MySQL 5.7+
- OpenAI API key (optional, for AI features)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/zenlog.git
   cd zenlog
   ```

2. **Set up your database**
   ```bash
   mysql -u your_username -p your_database < sql/schema.sql
   ```

3. **Configure database connection**
   Update `php/config.php` with your database credentials:
   ```php
   <?php
   $host = 'localhost';
   $dbname = 'zenlog_db';
   $username = 'your_username';
   $password = 'your_password';
   ?>
   ```

4. **Configure OpenAI API (Optional)**
   Create `.env` file:
   ```env
   OPENAI_API_KEY=your_openai_api_key_here
   ```

5. **Launch the application**
   Open `dashboard.html` or `dashboard.php` in your web browser

## 🚀 Usage

1. **Dashboard**: Start by logging your current mood and setting daily goals
2. **Sleep Tracker**: Record your sleep patterns and view weekly trends
3. **Activities**: Practice mindfulness exercises and breathing techniques  
4. **Goals**: Set wellness objectives and track your progress over time
5. **Reflections**: Use AI-powered prompts for deeper self-awareness

## 🗃️ Database Schema

```sql
-- Goals table
CREATE TABLE goals (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Mood entries table
CREATE TABLE mood_entries (
    id INT PRIMARY KEY AUTO_INCREMENT,
    mood_score INT NOT NULL,
    notes TEXT,
    date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sleep data table
CREATE TABLE sleep_data (
    id INT PRIMARY KEY AUTO_INCREMENT,
    hours DECIMAL(3,1) NOT NULL,
    quality INT,
    date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## 🔧 Configuration

### Environment Variables
```env
# Database Configuration
DB_HOST=localhost
DB_NAME=zenlog_db
DB_USER=your_username
DB_PASS=your_password

# OpenAI API (Optional)
OPENAI_API_KEY=your_api_key

# Application Settings
DEBUG_MODE=false
```

## 📊 Features Overview

### Mood Tracking
- 1-10 mood scale with emoji indicators
- Weekly and monthly trend visualization
- Pattern recognition and insights

### Sleep Monitoring  
- Duration tracking with quality ratings
- Age-based sleep recommendations
- Sleep debt calculation and recovery tips

### Mindfulness Activities
- Guided breathing exercises (4-7-8 technique)
- Daily mindfulness challenges
- Nature-based relaxation tasks

### Goal Management
- SMART goal framework integration
- Progress tracking with visual indicators
- Achievement celebration system

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -m 'Add new feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Open a Pull Request

## 🐛 Known Issues

- Chart.js requires internet connection for CDN version
- OpenAI API responses may be slow during peak usage
- Mobile drag interactions need refinement

## 📋 Roadmap

- [ ] User authentication system
- [ ] Data export functionality  
- [ ] Offline mode support
- [ ] Mobile app version
- [ ] Advanced analytics dashboard

## 📜 License

This project is intended for **educational and personal use only**. 

## ⚠️ Security Notice

- Do not share or expose API keys publicly
- Keep user data secure and private
- Use HTTPS in production environments

## 🙏 Acknowledgments

- Chart.js for beautiful data visualizations
- OpenAI for AI-powered insights
- Mental health professionals who inspired this project

---

**ZenLog** – *Your journey to a calmer, more mindful life starts here.* 🌿

[![Made with PHP](https://img.shields.io/badge/Made%20with-PHP-777BB4?style=flat-square&logo=php)](https://php.net/)
[![JavaScript](https://img.shields.io/badge/JavaScript-Vanilla-F7DF1E?style=flat-square&logo=javascript)](https://javascript.info/)
[![Chart.js](https://img.shields.io/badge/Charts-Chart.js-FF6384?style=flat-square&logo=chart.js)](https://chartjs.org/)
