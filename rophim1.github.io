<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RỔ PHIM - Phim hay mỗi ngày</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary: #e50914;
            --primary-dark: #b20710;
            --primary-light: #ff4757;
            --secondary: #141414;
            --dark: #0f0f0f;
            --darker: #050505;
            --light: #ffffff;
            --light-gray: #e5e5e5;
            --gray: #808080;
            --dark-gray: #2a2a2a;
            --success: #00d474;
            --warning: #ffa500;
            --info: #0099ff;
            --gradient: linear-gradient(135deg, #e50914 0%, #ff6b6b 100%);
            --gradient-dark: linear-gradient(135deg, #0f0f0f 0%, #1a1a1a 100%);
            --gradient-card: linear-gradient(180deg, rgba(20,20,20,0.95) 0%, rgba(15,15,15,0.98) 100%);
            --shadow: 0 8px 30px rgba(0, 0, 0, 0.6);
            --shadow-light: 0 4px 20px rgba(0, 0, 0, 0.3);
            --radius: 12px;
            --radius-sm: 8px;
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            --glass: rgba(255, 255, 255, 0.08);
            --glass-border: rgba(255, 255, 255, 0.15);
            --blur: blur(15px);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--darker);
            color: var(--light);
            line-height: 1.6;
            overflow-x: hidden;
            background-image: 
                radial-gradient(circle at 10% 20%, rgba(229, 9, 20, 0.1) 0%, transparent 50%),
                radial-gradient(circle at 90% 80%, rgba(0, 212, 116, 0.1) 0%, transparent 50%);
        }

        h1, h2, h3, h4, h5, h6 {
            font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            line-height: 1.2;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        ul {
            list-style: none;
        }

        .container {
            width: 100%;
            max-width: 1600px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 12px 24px;
            border-radius: var(--radius-sm);
            font-weight: 600;
            font-size: 14px;
            cursor: pointer;
            transition: var(--transition);
            border: none;
            outline: none;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .btn-primary {
            background: var(--gradient);
            color: white;
            box-shadow: 0 4px 15px rgba(229, 9, 20, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(229, 9, 20, 0.4);
        }

        .btn-secondary {
            background: var(--glass);
            color: white;
            border: 1px solid var(--glass-border);
            backdrop-filter: var(--blur);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.12);
            transform: translateY(-2px);
        }

        .btn-success {
            background: var(--success);
            color: white;
        }

        .btn-warning {
            background: var(--warning);
            color: white;
        }

        .btn-info {
            background: var(--info);
            color: white;
        }

        .btn-sm {
            padding: 8px 16px;
            font-size: 13px;
        }

        .btn-lg {
            padding: 16px 32px;
            font-size: 15px;
        }

        /* Header */
        header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
            background: rgba(15, 15, 15, 0.98);
            backdrop-filter: var(--blur);
            border-bottom: 1px solid var(--glass-border);
            padding: 12px 0;
            transition: var(--transition);
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 20px;
        }

        .logo-container {
            display: flex;
            align-items: center;
            gap: 12px;
            cursor: pointer;
        }

        .logo-placeholder {
            width: 50px;
            height: 50px;
            border-radius: 10px;
            background: var(--gradient);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: 900;
            font-size: 22px;
            box-shadow: 0 4px 15px rgba(229, 9, 20, 0.3);
            overflow: hidden;
        }

        .logo-img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: none;
        }

        .logo-text {
            display: flex;
            flex-direction: column;
        }

        .logo-text h1 {
            font-size: 24px;
            font-weight: 900;
            background: var(--gradient);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            line-height: 1;
            letter-spacing: 0.5px;
        }

        .logo-text p {
            font-size: 11px;
            color: var(--gray);
            margin-top: 3px;
            letter-spacing: 0.5px;
        }

        .nav-search {
            display: flex;
            align-items: center;
            gap: 20px;
            flex: 1;
            max-width: 800px;
        }

        .search-container {
            position: relative;
            flex: 1;
        }

        .search-input {
            background: var(--glass);
            border: 1px solid var(--glass-border);
            border-radius: 30px;
            padding: 12px 20px 12px 45px;
            color: white;
            width: 100%;
            font-size: 14px;
            transition: var(--transition);
            backdrop-filter: var(--blur);
        }

        .search-input:focus {
            outline: none;
            border-color: var(--primary);
            background: rgba(255, 255, 255, 0.1);
            box-shadow: 0 0 15px rgba(229, 9, 20, 0.2);
        }

        .search-icon {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--gray);
        }

        .sync-status {
            background: rgba(0, 212, 116, 0.1);
            color: var(--success);
            padding: 8px 16px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 8px;
            border: 1px solid rgba(0, 212, 116, 0.2);
            backdrop-filter: var(--blur);
            white-space: nowrap;
        }

        /* Main Layout */
        .main-content {
            display: flex;
            margin-top: 80px;
            min-height: calc(100vh - 160px);
            gap: 30px;
        }

        .video-player-section {
            flex: 1;
            min-width: 0;
        }

        .movies-sidebar {
            width: 380px;
            background: var(--gradient-card);
            border-radius: var(--radius);
            padding: 20px;
            border: 1px solid var(--glass-border);
            backdrop-filter: var(--blur);
            max-height: calc(100vh - 160px);
            display: flex;
            flex-direction: column;
            box-shadow: var(--shadow);
        }

        /* Video Player */
        .video-player-wrapper {
            background: var(--gradient-card);
            border-radius: var(--radius);
            overflow: hidden;
            border: 1px solid var(--glass-border);
            box-shadow: var(--shadow);
            margin-bottom: 20px;
        }

        .video-player-container {
            position: relative;
            padding-bottom: 56.25%;
            height: 0;
            overflow: hidden;
            background: #000;
            border-radius: var(--radius) var(--radius) 0 0;
        }

        .video-player {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: 0;
        }

        .video-placeholder {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: var(--gradient-dark);
            color: white;
            text-align: center;
            padding: 30px;
            border-radius: var(--radius) var(--radius) 0 0;
        }

        .video-placeholder i {
            font-size: 80px;
            background: var(--gradient);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 20px;
            opacity: 0.8;
        }

        .video-placeholder h3 {
            font-size: 28px;
            margin-bottom: 10px;
            background: var(--gradient);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            font-weight: 800;
        }

        .video-info {
            padding: 24px;
        }

        .video-title {
            font-size: 28px;
            font-weight: 800;
            margin-bottom: 16px;
            color: white;
            line-height: 1.3;
        }

        .video-meta {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
            margin-bottom: 20px;
            padding-bottom: 16px;
            border-bottom: 1px solid var(--glass-border);
        }

        .meta-item {
            display: flex;
            align-items: center;
            gap: 6px;
            color: var(--gray);
            font-size: 14px;
        }

        .meta-item i {
            color: var(--primary);
            font-size: 16px;
        }

        .video-description {
            line-height: 1.7;
            color: var(--light-gray);
            margin-bottom: 24px;
            font-size: 15px;
        }

        .video-actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        /* Movies Sidebar */
        .section-title {
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 20px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-bottom: 12px;
            border-bottom: 1px solid var(--glass-border);
        }

        .movies-list {
            display: flex;
            flex-direction: column;
            gap: 12px;
            overflow-y: auto;
            flex: 1;
            padding-right: 8px;
        }

        .movies-list::-webkit-scrollbar {
            width: 6px;
        }

        .movies-list::-webkit-scrollbar-track {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 3px;
        }

        .movies-list::-webkit-scrollbar-thumb {
            background: var(--primary);
            border-radius: 3px;
        }

        .movie-item {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 16px;
            background: rgba(255, 255, 255, 0.04);
            border-radius: var(--radius-sm);
            border: 1px solid var(--glass-border);
            cursor: pointer;
            transition: var(--transition);
        }

        .movie-item:hover {
            background: rgba(255, 255, 255, 0.08);
            transform: translateX(4px);
            border-color: rgba(229, 9, 20, 0.3);
        }

        .movie-item.active {
            background: rgba(229, 9, 20, 0.1);
            border-color: var(--primary);
            box-shadow: 0 0 20px rgba(229, 9, 20, 0.2);
        }

        .movie-item-poster {
            width: 70px;
            height: 100px;
            object-fit: cover;
            border-radius: 6px;
            transition: var(--transition);
        }

        .movie-item:hover .movie-item-poster {
            transform: scale(1.05);
        }

        .movie-item-info {
            flex-grow: 1;
        }

        .movie-item-title {
            font-weight: 700;
            margin-bottom: 6px;
            color: white;
            font-size: 15px;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .movie-item-meta {
            font-size: 12px;
            color: var(--gray);
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
        }

        /* Comments Section */
        .comments-section {
            background: var(--gradient-card);
            border-radius: var(--radius);
            padding: 24px;
            border: 1px solid var(--glass-border);
            margin-top: 20px;
            backdrop-filter: var(--blur);
            box-shadow: var(--shadow-light);
        }

        .comment-form {
            display: flex;
            gap: 12px;
            margin-bottom: 24px;
        }

        .comment-input {
            flex: 1;
            padding: 14px;
            background: var(--glass);
            border: 1px solid var(--glass-border);
            border-radius: var(--radius-sm);
            color: white;
            font-size: 14px;
            transition: var(--transition);
            resize: vertical;
            min-height: 50px;
            max-height: 100px;
        }

        .comment-input:focus {
            outline: none;
            border-color: var(--primary);
            background: rgba(255, 255, 255, 0.1);
        }

        .comments-list {
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .comment-item {
            background: rgba(255, 255, 255, 0.04);
            padding: 16px;
            border-radius: var(--radius-sm);
            border: 1px solid var(--glass-border);
            animation: fadeIn 0.3s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .comment-header {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 12px;
        }

        .comment-avatar {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: var(--gradient);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: 600;
            font-size: 14px;
        }

        .comment-info {
            flex-grow: 1;
        }

        .comment-author {
            font-weight: 600;
            color: white;
            font-size: 14px;
        }

        .comment-time {
            font-size: 11px;
            color: var(--gray);
        }

        .comment-text {
            color: var(--light-gray);
            line-height: 1.6;
            font-size: 14px;
        }

        /* Admin Access - Hidden */
        .admin-access {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(5, 5, 5, 0.98);
            backdrop-filter: blur(25px);
            z-index: 10000;
            display: none;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .admin-access.active {
            display: flex;
        }

        .access-form {
            background: var(--gradient-card);
            border-radius: var(--radius);
            padding: 50px;
            max-width: 480px;
            width: 100%;
            border: 1px solid var(--glass-border);
            box-shadow: var(--shadow);
            text-align: center;
        }

        .access-title {
            font-size: 32px;
            margin-bottom: 30px;
            background: var(--gradient);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            font-weight: 900;
        }

        /* Loading Spinner */
        .loading-spinner {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 10002;
            text-align: center;
            background: var(--gradient-card);
            padding: 30px;
            border-radius: var(--radius);
            border: 1px solid var(--glass-border);
            box-shadow: var(--shadow);
        }

        .spinner {
            width: 50px;
            height: 50px;
            border: 4px solid rgba(255, 255, 255, 0.1);
            border-top-color: var(--primary);
            border-radius: 50%;
            animation: spin 1s linear infinite;
            margin: 0 auto 15px;
        }

        @keyframes spin {
            to { transform: rotate(360deg); }
        }

        /* Toast Notification */
        .toast {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: var(--gradient-card);
            border-left: 4px solid var(--primary);
            padding: 16px 24px;
            border-radius: var(--radius-sm);
            box-shadow: var(--shadow);
            display: none;
            align-items: center;
            gap: 15px;
            z-index: 10003;
            max-width: 400px;
            backdrop-filter: var(--blur);
            border: 1px solid var(--glass-border);
            animation: slideIn 0.3s ease;
        }

        @keyframes slideIn {
            from { transform: translateX(100%); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }

        .toast-icon {
            font-size: 24px;
        }

        .toast-success {
            border-left-color: var(--success);
        }

        .toast-success .toast-icon {
            color: var(--success);
        }

        .toast-error {
            border-left-color: var(--primary);
        }

        .toast-error .toast-icon {
            color: var(--primary);
        }

        .toast-info {
            border-left-color: var(--info);
        }

        .toast-info .toast-icon {
            color: var(--info);
        }

        .toast-content {
            flex-grow: 1;
        }

        .toast-title {
            font-weight: 700;
            margin-bottom: 4px;
            font-size: 15px;
        }

        .toast-message {
            font-size: 13px;
            color: var(--gray);
        }

        .close-toast {
            background: transparent;
            border: none;
            color: var(--gray);
            cursor: pointer;
            font-size: 18px;
            transition: var(--transition);
        }

        .close-toast:hover {
            color: white;
        }

        /* Admin Panel - Enhanced */
        .admin-panel {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(5, 5, 5, 0.98);
            backdrop-filter: blur(25px);
            z-index: 10001;
            display: none;
            overflow-y: auto;
        }

        .admin-panel.active {
            display: block;
        }

        .admin-header {
            background: rgba(15, 15, 15, 0.95);
            padding: 20px 0;
            border-bottom: 1px solid var(--glass-border);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .admin-header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .admin-title {
            font-size: 28px;
            font-weight: 900;
            background: var(--gradient);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .admin-controls {
            display: flex;
            gap: 12px;
            align-items: center;
        }

        .close-admin {
            background: var(--glass);
            width: 44px;
            height: 44px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: var(--transition);
            border: 1px solid var(--glass-border);
        }

        .close-admin:hover {
            background: var(--primary);
            transform: rotate(90deg);
        }

        .admin-tabs {
            display: flex;
            gap: 5px;
            margin-bottom: 30px;
            padding: 20px 0;
            border-bottom: 1px solid var(--glass-border);
            flex-wrap: wrap;
        }

        .admin-tab {
            padding: 12px 24px;
            background: transparent;
            border: none;
            color: var(--gray);
            font-weight: 600;
            font-size: 15px;
            cursor: pointer;
            transition: var(--transition);
            border-radius: var(--radius-sm);
            position: relative;
        }

        .admin-tab:hover {
            color: white;
            background: rgba(255, 255, 255, 0.05);
        }

        .admin-tab.active {
            color: white;
            background: rgba(229, 9, 20, 0.2);
            box-shadow: 0 4px 15px rgba(229, 9, 20, 0.2);
        }

        .admin-content {
            display: none;
            padding: 20px 0 40px;
        }

        .admin-content.active {
            display: block;
        }

        /* Form Styles */
        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: white;
            font-size: 14px;
        }

        .form-control {
            width: 100%;
            padding: 14px;
            background: var(--glass);
            border: 1px solid var(--glass-border);
            border-radius: var(--radius-sm);
            color: white;
            font-size: 15px;
            transition: var(--transition);
            backdrop-filter: var(--blur);
        }

        .form-control:focus {
            outline: none;
            border-color: var(--primary);
            background: rgba(255, 255, 255, 0.1);
            box-shadow: 0 0 15px rgba(229, 9, 20, 0.2);
        }

        textarea.form-control {
            min-height: 120px;
            resize: vertical;
        }

        .admin-movies-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
            gap: 20px;
        }

        .admin-movie-card {
            background: var(--gradient-card);
            border-radius: var(--radius);
            padding: 20px;
            border: 1px solid var(--glass-border);
            transition: var(--transition);
            backdrop-filter: var(--blur);
        }

        .admin-movie-card:hover {
            border-color: rgba(229, 9, 20, 0.3);
            transform: translateY(-5px);
            box-shadow: var(--shadow);
        }

        .admin-movie-header {
            display: flex;
            align-items: center;
            gap: 15px;
            margin-bottom: 15px;
        }

        .admin-movie-poster {
            width: 70px;
            height: 100px;
            object-fit: cover;
            border-radius: 6px;
        }

        .admin-movie-title {
            font-weight: 700;
            color: white;
            flex-grow: 1;
            font-size: 16px;
        }

        .admin-movie-actions {
            display: flex;
            gap: 8px;
        }

        .admin-action-btn {
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 600;
            cursor: pointer;
            border: none;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 4px;
        }

        .edit-btn {
            background: rgba(0, 212, 116, 0.1);
            color: var(--success);
            border: 1px solid rgba(0, 212, 116, 0.2);
        }

        .edit-btn:hover {
            background: rgba(0, 212, 116, 0.2);
        }

        .delete-btn {
            background: rgba(229, 9, 20, 0.1);
            color: var(--primary);
            border: 1px solid rgba(229, 9, 20, 0.2);
        }

        .delete-btn:hover {
            background: rgba(229, 9, 20, 0.2);
        }

        /* Statistics Cards */
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            margin-bottom: 30px;
        }

        .stat-card {
            background: var(--gradient-card);
            padding: 24px;
            border-radius: var(--radius);
            border: 1px solid var(--glass-border);
            text-align: center;
            transition: var(--transition);
            backdrop-filter: var(--blur);
        }

        .stat-card:hover {
            transform: translateY(-3px);
            box-shadow: var(--shadow-light);
        }

        .stat-value {
            font-size: 36px;
            font-weight: 900;
            background: var(--gradient);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            line-height: 1;
            margin-bottom: 8px;
        }

        .stat-label {
            color: var(--gray);
            font-size: 13px;
            font-weight: 600;
        }

        /* Logo Customization */
        .logo-customization {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .logo-preview-box {
            background: var(--glass);
            padding: 30px;
            border-radius: var(--radius);
            border: 1px solid var(--glass-border);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            gap: 20px;
            backdrop-filter: var(--blur);
        }

        .current-logo-display {
            display: flex;
            align-items: center;
            gap: 15px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: var(--radius);
            border: 1px solid var(--glass-border);
        }

        /* Theme Customization */
        .color-picker-group {
            display: flex;
            gap: 15px;
            margin-bottom: 25px;
            flex-wrap: wrap;
        }

        .color-picker {
            flex: 1;
            min-width: 120px;
        }

        .color-picker label {
            display: block;
            margin-bottom: 8px;
            color: white;
            font-weight: 600;
            font-size: 14px;
        }

        .color-input {
            width: 100%;
            height: 40px;
            border-radius: var(--radius-sm);
            border: 1px solid var(--glass-border);
            cursor: pointer;
            background: transparent;
            padding: 0;
        }

        /* Settings Tabs */
        .settings-tabs {
            display: flex;
            gap: 5px;
            margin-bottom: 25px;
            flex-wrap: wrap;
        }

        .settings-tab {
            padding: 10px 20px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--glass-border);
            color: var(--gray);
            border-radius: var(--radius-sm);
            cursor: pointer;
            transition: var(--transition);
            font-size: 14px;
            font-weight: 600;
        }

        .settings-tab:hover {
            background: rgba(255, 255, 255, 0.1);
            color: white;
        }

        .settings-tab.active {
            background: rgba(229, 9, 20, 0.2);
            color: white;
            border-color: var(--primary);
        }

        /* Users Management */
        .users-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }

        .user-card {
            background: var(--gradient-card);
            padding: 20px;
            border-radius: var(--radius);
            border: 1px solid var(--glass-border);
            backdrop-filter: var(--blur);
        }

        .user-header {
            display: flex;
            align-items: center;
            gap: 15px;
            margin-bottom: 15px;
        }

        .user-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: var(--gradient);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: 700;
            font-size: 18px;
        }

        .user-info {
            flex-grow: 1;
        }

        .user-name {
            font-weight: 700;
            color: white;
            margin-bottom: 4px;
        }

        .user-role {
            font-size: 13px;
            color: var(--gray);
        }

        /* Backup & Restore */
        .backup-section {
            background: var(--gradient-card);
            padding: 30px;
            border-radius: var(--radius);
            border: 1px solid var(--glass-border);
            margin-bottom: 30px;
            backdrop-filter: var(--blur);
        }

        /* Footer */
        footer {
            background: rgba(15, 15, 15, 0.95);
            padding: 30px 0;
            border-top: 1px solid var(--glass-border);
            margin-top: 40px;
            backdrop-filter: var(--blur);
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 20px;
        }

        .footer-info {
            flex: 1;
            min-width: 300px;
        }

        .footer-links {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .footer-links a {
            color: var(--gray);
            font-size: 14px;
            transition: var(--transition);
        }

        .footer-links a:hover {
            color: var(--primary);
        }

        /* Responsive */
        @media (max-width: 1200px) {
            .main-content {
                flex-direction: column;
            }
            
            .movies-sidebar {
                width: 100%;
                max-height: none;
            }
            
            .movies-list {
                flex-direction: row;
                overflow-x: auto;
                padding-bottom: 10px;
            }
            
            .movie-item {
                min-width: 250px;
            }
        }

        @media (max-width: 992px) {
            .container {
                padding: 0 15px;
            }
            
            .header-content {
                flex-wrap: wrap;
            }
            
            .nav-search {
                order: 3;
                width: 100%;
                max-width: none;
            }
            
            .admin-tabs {
                overflow-x: auto;
                padding-bottom: 10px;
            }
            
            .admin-tab {
                white-space: nowrap;
            }
        }

        @media (max-width: 768px) {
            .video-actions {
                flex-direction: column;
            }
            
            .btn {
                width: 100%;
            }
            
            .comment-form {
                flex-direction: column;
            }
            
            .admin-movies-grid {
                grid-template-columns: 1fr;
            }
            
            .footer-content {
                flex-direction: column;
                text-align: center;
            }
            
            .logo-customization {
                grid-template-columns: 1fr;
            }
            
            .access-form {
                padding: 30px 20px;
            }
        }

        @media (max-width: 576px) {
            .logo-text h1 {
                font-size: 20px;
            }
            
            .logo-placeholder {
                width: 40px;
                height: 40px;
                font-size: 18px;
            }
            
            .search-input {
                padding: 10px 15px 10px 40px;
                font-size: 13px;
            }
            
            .video-title {
                font-size: 24px;
            }
            
            .admin-header-content {
                flex-direction: column;
                gap: 15px;
                text-align: center;
            }
            
            .admin-controls {
                width: 100%;
                justify-content: center;
            }
        }
    </style>
</head>
<body>
    <!-- Loading Spinner -->
    <div class="loading-spinner" id="loadingSpinner">
        <div class="spinner"></div>
        <p>Đang xử lý...</p>
    </div>

    <!-- Toast Notification -->
    <div class="toast" id="toast">
        <div class="toast-icon">
            <i class="fas fa-check-circle"></i>
        </div>
        <div class="toast-content">
            <div class="toast-title" id="toastTitle">Thành công</div>
            <div class="toast-message" id="toastMessage">Đã xử lý thành công</div>
        </div>
        <button class="close-toast" id="closeToast">
            <i class="fas fa-times"></i>
        </button>
    </div>

    <!-- Admin Access Panel - Hidden -->
    <div class="admin-access" id="adminAccess">
        <div class="access-form">
            <h1 class="access-title">TRUY CẬP QUẢN TRỊ</h1>
            <div class="form-group">
                <input type="password" class="form-control" id="adminPassword" placeholder="Nhập mật khẩu quản trị" autocomplete="off">
                <small style="color: var(--gray); font-size: 12px; display: block; margin-top: 5px;">Mật khẩu mặc định: admin123</small>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="apiKey" placeholder="Nhập API Key (tùy chọn)">
            </div>
            <div class="form-group">
                <select class="form-control" id="adminMode">
                    <option value="view">Chế độ xem trang chủ</option>
                    <option value="admin">Chế độ quản trị</option>
                </select>
            </div>
            <button class="btn btn-primary" id="loginBtn" style="width: 100%; margin-bottom: 10px;">
                <i class="fas fa-sign-in-alt"></i> TIẾP TỤC
            </button>
            <button class="btn btn-secondary" id="cancelBtn" style="width: 100%;">
                <i class="fas fa-times"></i> HỦY
            </button>
        </div>
    </div>

    <!-- Header -->
    <header>
        <div class="container header-content">
            <div class="logo-container" id="logoContainer">
                <div class="logo-placeholder" id="logoPlaceholder">
                    <img src="" alt="Logo" class="logo-img" id="logoImg">
                    <span id="logoTextIcon">RP</span>
                </div>
                <div class="logo-text">
                    <h1 id="siteTitle">RỔ PHIM</h1>
                    <p id="siteTagline">Phim hay mỗi ngày</p>
                </div>
            </div>
            
            <div class="nav-search">
                <div class="search-container">
                    <i class="fas fa-search search-icon"></i>
                    <input type="text" class="search-input" id="searchInput" placeholder="Tìm kiếm phim...">
                </div>
                
                <div class="sync-status" id="syncStatus">
                    <i class="fas fa-sync-alt"></i>
                    <span id="syncStatusText">Đang kết nối...</span>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="main-content container">
        <!-- Video Player Section -->
        <div class="video-player-section">
            <div class="video-player-wrapper">
                <div class="video-player-container">
                    <iframe 
                        class="video-player" 
                        id="videoPlayer"
                        src="" 
                        frameborder="0" 
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                        allowfullscreen
                        title="Video Player"
                        loading="lazy"
                    ></iframe>
                    
                    <div class="video-placeholder" id="videoPlaceholder">
                        <i class="fas fa-film"></i>
                        <h3>Chào mừng đến với Rổ Phim</h3>
                        <p>Chọn một bộ phim từ danh sách để bắt đầu xem</p>
                    </div>
                </div>
                
                <div class="video-info">
                    <h2 class="video-title" id="videoTitle">Chưa chọn phim</h2>
                    
                    <div class="video-meta">
                        <div class="meta-item">
                            <i class="fas fa-calendar"></i>
                            <span id="videoYear">--</span>
                        </div>
                        <div class="meta-item">
                            <i class="fas fa-star"></i>
                            <span id="videoRating">--/10</span>
                        </div>
                        <div class="meta-item">
                            <i class="fas fa-clock"></i>
                            <span id="videoDuration">-- phút</span>
                        </div>
                        <div class="meta-item">
                            <i class="fas fa-eye"></i>
                            <span id="videoViews">0 lượt xem</span>
                        </div>
                        <div class="meta-item">
                            <i class="fas fa-heart"></i>
                            <span id="videoLikes">0 lượt thích</span>
                        </div>
                    </div>
                    
                    <div class="video-description" id="videoDescription">
                        Chọn một bộ phim từ danh sách để xem thông tin chi tiết.
                    </div>
                    
                    <div class="video-actions">
                        <button class="btn btn-primary" id="playBtn" disabled>
                            <i class="fas fa-play"></i> Phát phim
                        </button>
                        <button class="btn btn-secondary" id="fullscreenBtn">
                            <i class="fas fa-expand"></i> Toàn màn hình
                        </button>
                        <button class="btn btn-secondary" id="likeBtn">
                            <i class="fas fa-heart"></i> Thích
                        </button>
                        <button class="btn btn-secondary" id="shareBtn">
                            <i class="fas fa-share"></i> Chia sẻ
                        </button>
                    </div>
                </div>
            </div>

            <!-- Comments Section -->
            <div class="comments-section" id="commentsSection">
                <h3 class="section-title">Bình luận <span id="commentsCount">0</span></h3>
                
                <div class="comment-form">
                    <textarea class="comment-input" id="commentInput" placeholder="Thêm bình luận của bạn... (Enter để gửi, Shift+Enter để xuống dòng)"></textarea>
                    <button class="btn btn-primary btn-sm" id="submitComment">
                        <i class="fas fa-paper-plane"></i> Gửi
                    </button>
                </div>
                
                <div class="comments-list" id="commentsList">
                    <div class="comment-item" style="text-align: center; color: var(--gray);">
                        <i class="fas fa-comments" style="font-size: 40px; margin-bottom: 10px;"></i>
                        <p>Chưa có bình luận nào. Hãy là người đầu tiên bình luận!</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Movies Sidebar -->
        <div class="movies-sidebar">
            <div class="section-title">
                <span>Danh sách phim</span>
                <span id="moviesCount">0</span>
            </div>
            
            <div class="movies-list" id="moviesList">
                <!-- Movies will be loaded here -->
            </div>
        </div>
    </div>

    <!-- Admin Panel - Enhanced -->
    <div class="admin-panel" id="adminPanel">
        <div class="admin-header">
            <div class="container admin-header-content">
                <h2 class="admin-title">BẢNG QUẢN TRỊ HỆ THỐNG</h2>
                <div class="admin-controls">
                    <button class="btn btn-success btn-sm" id="syncNowBtn">
                        <i class="fas fa-sync-alt"></i> Đồng bộ
                    </button>
                    <button class="btn btn-info btn-sm" id="viewSiteBtn">
                        <i class="fas fa-eye"></i> Xem trang chủ
                    </button>
                    <div class="close-admin" id="closeAdmin">
                        <i class="fas fa-times"></i>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="container">
            <div class="admin-tabs">
                <button class="admin-tab active" data-tab="dashboard">Tổng quan</button>
                <button class="admin-tab" data-tab="movies">Quản lý phim</button>
                <button class="admin-tab" data-tab="add-movie">Thêm phim</button>
                <button class="admin-tab" data-tab="users">Người dùng</button>
                <button class="admin-tab" data-tab="customize">Tùy chỉnh</button>
                <button class="admin-tab" data-tab="settings">Cài đặt</button>
                <button class="admin-tab" data-tab="backup">Sao lưu</button>
            </div>
            
            <!-- Dashboard -->
            <div class="admin-content active" id="dashboard">
                <div class="stats-grid">
                    <div class="stat-card">
                        <div class="stat-value" id="totalMovies">0</div>
                        <div class="stat-label">Tổng số phim</div>
                    </div>
                    
                    <div class="stat-card">
                        <div class="stat-value" id="totalViews">0</div>
                        <div class="stat-label">Tổng lượt xem</div>
                    </div>
                    
                    <div class="stat-card">
                        <div class="stat-value" id="totalLikes">0</div>
                        <div class="stat-label">Tổng lượt thích</div>
                    </div>
                    
                    <div class="stat-card">
                        <div class="stat-value" id="totalComments">0</div>
                        <div class="stat-label">Tổng bình luận</div>
                    </div>
                    
                    <div class="stat-card">
                        <div class="stat-value" id="lastSync">--:--</div>
                        <div class="stat-label">Đồng bộ lần cuối</div>
                    </div>
                    
                    <div class="stat-card">
                        <div class="stat-value" id="onlineUsers">1</div>
                        <div class="stat-label">Người đang online</div>
                    </div>
                </div>
                
                <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 30px; margin-top: 30px;">
                    <div style="background: var(--gradient-card); padding: 25px; border-radius: var(--radius); border: 1px solid var(--glass-border); backdrop-filter: var(--blur);">
                        <h3 style="margin-bottom: 20px; color: white;">Phim phổ biến</h3>
                        <div id="topMovies">
                            <p style="color: var(--gray); text-align: center;">Đang tải...</p>
                        </div>
                    </div>
                    
                    <div style="background: var(--gradient-card); padding: 25px; border-radius: var(--radius); border: 1px solid var(--glass-border); backdrop-filter: var(--blur);">
                        <h3 style="margin-bottom: 20px; color: white;">Hoạt động gần đây</h3>
                        <div id="recentActivity">
                            <p style="color: var(--gray); text-align: center;">Đang tải...</p>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Manage Movies -->
            <div class="admin-content" id="movies">
                <div style="display: flex; gap: 15px; margin-bottom: 20px;">
                    <input type="text" class="form-control" id="searchAdminMovies" placeholder="Tìm kiếm phim...">
                    <select class="form-control" id="filterCategory" style="width: 200px;">
                        <option value="">Tất cả thể loại</option>
                    </select>
                    <button class="btn btn-primary btn-sm" id="refreshMoviesBtn">
                        <i class="fas fa-redo"></i> Làm mới
                    </button>
                </div>
                
                <div class="admin-movies-grid" id="adminMoviesGrid">
                    <!-- Movies will be loaded here -->
                </div>
            </div>
            
            <!-- Add Movie -->
            <div class="admin-content" id="add-movie">
                <form id="addMovieForm">
                    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px; margin-bottom: 25px;">
                        <div class="form-group">
                            <label class="form-label">Tên phim *</label>
                            <input type="text" class="form-control" id="movieTitle" required autocomplete="off">
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">Năm phát hành *</label>
                            <input type="number" class="form-control" id="movieYear" min="1900" max="2030" required>
                        </div>
                    </div>
                    
                    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 20px; margin-bottom: 25px;">
                        <div class="form-group">
                            <label class="form-label">Đánh giá (0-10)</label>
                            <input type="number" class="form-control" id="movieRating" step="0.1" min="0" max="10" value="7.0">
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">Thời lượng (phút)</label>
                            <input type="number" class="form-control" id="movieDuration" value="120">
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">Chất lượng</label>
                            <select class="form-control" id="movieQuality">
                                <option value="HD">HD</option>
                                <option value="FullHD">Full HD</option>
                                <option value="4K">4K</option>
                                <option value="2K">2K</option>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Thể loại (phân cách bằng dấu phẩy) *</label>
                        <input type="text" class="form-control" id="movieGenres" placeholder="Hành động, Lãng mạn, Hài" required autocomplete="off">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Diễn viên (tùy chọn)</label>
                        <input type="text" class="form-control" id="movieActors" placeholder="Người A, Người B, Người C" autocomplete="off">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Đạo diễn (tùy chọn)</label>
                        <input type="text" class="form-control" id="movieDirector" placeholder="Người D" autocomplete="off">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Mô tả phim *</label>
                        <textarea class="form-control" id="movieDescription" rows="4" required></textarea>
                    </div>
                    
                    <div style="background: rgba(0, 212, 116, 0.1); padding: 20px; border-radius: var(--radius-sm); border: 1px solid rgba(0, 212, 116, 0.2); margin-bottom: 25px;">
                        <h4 style="color: var(--success); margin-bottom: 15px;"><i class="fas fa-link"></i> Link video</h4>
                        <div class="form-group">
                            <label class="form-label">Link Google Drive *</label>
                            <input type="text" class="form-control" id="movieVideoLink" placeholder="https://drive.google.com/file/d/.../preview" required autocomplete="off">
                            <small style="color: var(--gray); display: block; margin-top: 5px;">
                                • Đảm bảo link chia sẻ công khai (Public)<br>
                                • Thay "/view?usp=sharing" bằng "/preview"
                            </small>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">Link dự phòng (tùy chọn)</label>
                            <input type="text" class="form-control" id="movieBackupLink" placeholder="Link dự phòng nếu Drive lỗi" autocomplete="off">
                        </div>
                        
                        <button type="button" class="btn btn-info btn-sm" id="testVideoLink">
                            <i class="fas fa-play-circle"></i> Kiểm tra link video
                        </button>
                    </div>
                    
                    <div style="background: rgba(0, 150, 255, 0.1); padding: 20px; border-radius: var(--radius-sm); border: 1px solid rgba(0, 150, 255, 0.2); margin-bottom: 25px;">
                        <h4 style="color: var(--info); margin-bottom: 15px;"><i class="fas fa-image"></i> Hình ảnh</h4>
                        <div class="form-group">
                            <label class="form-label">Poster phim (URL) *</label>
                            <input type="text" class="form-control" id="moviePoster" placeholder="https://example.com/poster.jpg" required autocomplete="off">
                            <small style="color: var(--gray); display: block; margin-top: 5px;">
                                • Dùng link hình ảnh trực tiếp (jpg, png, webp)<br>
                                • Kích thước đề xuất: 300x450px
                            </small>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">Banner phim (tùy chọn)</label>
                            <input type="text" class="form-control" id="movieBanner" placeholder="https://example.com/banner.jpg" autocomplete="off">
                            <small style="color: var(--gray); display: block; margin-top: 5px;">
                                • Kích thước đề xuất: 1280x720px
                            </small>
                        </div>
                        
                        <div style="display: flex; gap: 15px; margin-top: 15px;">
                            <div style="text-align: center;">
                                <div style="width: 100px; height: 150px; background: var(--glass); border-radius: 6px; overflow: hidden; margin-bottom: 8px;">
                                    <img src="" alt="Poster preview" id="posterPreview" style="width: 100%; height: 100%; object-fit: cover; display: none;">
                                    <div id="posterPlaceholder" style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; color: var(--gray);">
                                        <i class="fas fa-image"></i>
                                    </div>
                                </div>
                                <div style="font-size: 12px; color: var(--gray);">Poster preview</div>
                            </div>
                            
                            <div style="text-align: center;">
                                <div style="width: 200px; height: 113px; background: var(--glass); border-radius: 6px; overflow: hidden; margin-bottom: 8px;">
                                    <img src="" alt="Banner preview" id="bannerPreview" style="width: 100%; height: 100%; object-fit: cover; display: none;">
                                    <div id="bannerPlaceholder" style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; color: var(--gray);">
                                        <i class="fas fa-image"></i>
                                    </div>
                                </div>
                                <div style="font-size: 12px; color: var(--gray);">Banner preview</div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Trạng thái</label>
                        <div style="display: flex; gap: 20px; margin-top: 10px;">
                            <label style="display: flex; align-items: center; gap: 8px; cursor: pointer;">
                                <input type="radio" name="movieStatus" value="active" checked>
                                <span>Hoạt động</span>
                            </label>
                            <label style="display: flex; align-items: center; gap: 8px; cursor: pointer;">
                                <input type="radio" name="movieStatus" value="inactive">
                                <span>Ẩn</span>
                            </label>
                            <label style="display: flex; align-items: center; gap: 8px; cursor: pointer;">
                                <input type="radio" name="movieStatus" value="coming">
                                <span>Sắp chiếu</span>
                            </label>
                        </div>
                    </div>
                    
                    <button type="submit" class="btn btn-primary btn-lg" style="width: 100%; margin-top: 20px;">
                        <i class="fas fa-plus"></i> THÊM PHIM MỚI
                    </button>
                </form>
            </div>
            
            <!-- Users Management -->
            <div class="admin-content" id="users">
                <div style="background: var(--gradient-card); padding: 25px; border-radius: var(--radius); border: 1px solid var(--glass-border); margin-bottom: 30px; backdrop-filter: var(--blur);">
                    <h3 style="margin-bottom: 20px; color: white;">Quản lý người dùng</h3>
                    
                    <div style="display: flex; gap: 15px; margin-bottom: 20px;">
                        <input type="text" class="form-control" placeholder="Tìm kiếm người dùng..." style="flex: 1;">
                        <button class="btn btn-primary btn-sm">
                            <i class="fas fa-plus"></i> Thêm người dùng
                        </button>
                        <button class="btn btn-secondary btn-sm">
                            <i class="fas fa-filter"></i> Lọc
                        </button>
                    </div>
                    
                    <div class="users-grid" id="usersGrid">
                        <div class="user-card">
                            <div class="user-header">
                                <div class="user-avatar">A</div>
                                <div class="user-info">
                                    <div class="user-name">Quản trị viên</div>
                                    <div class="user-role">Admin</div>
                                </div>
                                <div style="display: flex; gap: 8px;">
                                    <button class="admin-action-btn edit-btn btn-sm">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="admin-action-btn delete-btn btn-sm">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </div>
                            <div style="font-size: 13px; color: var(--gray); margin-top: 10px;">
                                <div><i class="fas fa-envelope"></i> admin@rophim.com</div>
                                <div><i class="fas fa-calendar"></i> Tham gia: 01/01/2024</div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div style="background: var(--gradient-card); padding: 25px; border-radius: var(--radius); border: 1px solid var(--glass-border); backdrop-filter: var(--blur);">
                    <h3 style="margin-bottom: 20px; color: white;">Thống kê người dùng</h3>
                    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(150px, 1fr)); gap: 15px;">
                        <div style="text-align: center; padding: 15px; background: rgba(255,255,255,0.05); border-radius: var(--radius-sm);">
                            <div style="font-size: 24px; font-weight: 700; color: var(--primary);">1</div>
                            <div style="font-size: 13px; color: var(--gray);">Tổng người dùng</div>
                        </div>
                        <div style="text-align: center; padding: 15px; background: rgba(255,255,255,0.05); border-radius: var(--radius-sm);">
                            <div style="font-size: 24px; font-weight: 700; color: var(--success);">0</div>
                            <div style="font-size: 13px; color: var(--gray);">Người dùng mới (7 ngày)</div>
                        </div>
                        <div style="text-align: center; padding: 15px; background: rgba(255,255,255,0.05); border-radius: var(--radius-sm);">
                            <div style="font-size: 24px; font-weight: 700; color: var(--info);">1</div>
                            <div style="font-size: 13px; color: var(--gray);">Người đang online</div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Customize -->
            <div class="admin-content" id="customize">
                <div class="settings-tabs">
                    <button class="settings-tab active" data-settings-tab="logo">Logo & Brand</button>
                    <button class="settings-tab" data-settings-tab="theme">Giao diện</button>
                    <button class="settings-tab" data-settings-tab="layout">Bố cục</button>
                    <button class="settings-tab" data-settings-tab="content">Nội dung</button>
                </div>
                
                <div id="logo-settings" class="settings-tab-content active">
                    <div class="logo-customization">
                        <div>
                            <div class="form-group">
                                <label class="form-label">Logo hiện tại</label>
                                <div class="logo-preview-box">
                                    <div class="current-logo-display">
                                        <div class="logo-placeholder" id="currentLogoPreview">
                                            <img src="" alt="Logo" class="logo-img" id="currentLogoImg">
                                            <span id="currentLogoText">RP</span>
                                        </div>
                                        <div class="logo-text">
                                            <h1 id="currentSiteTitle">RỔ PHIM</h1>
                                            <p id="currentSiteTagline">Phim hay mỗi ngày</p>
                                        </div>
                                    </div>
                                    <div style="color: var(--gray); font-size: 13px; text-align: center;">
                                        Logo sẽ hiển thị cho tất cả người dùng
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">Tên website *</label>
                                <input type="text" class="form-control" id="newSiteTitle" value="RỔ PHIM" required>
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">Khẩu hiệu / Tagline</label>
                                <input type="text" class="form-control" id="newSiteTagline" value="Phim hay mỗi ngày">
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">Logo dạng text</label>
                                <input type="text" class="form-control" id="newLogoText" value="RP" maxlength="5">
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">URL hình ảnh logo (tùy chọn)</label>
                                <input type="text" class="form-control" id="newLogoImage" placeholder="https://example.com/logo.png">
                                <small style="color: var(--gray); display: block; margin-top: 5px;">
                                    Để trống nếu muốn dùng logo dạng text
                                </small>
                            </div>
                            
                            <button class="btn btn-primary" id="updateLogoBtn" style="width: 100%;">
                                <i class="fas fa-save"></i> CẬP NHẬT BRANDING
                            </button>
                        </div>
                        
                        <div>
                            <div class="form-group">
                                <label class="form-label">Màu sắc website</label>
                                <div class="color-picker-group">
                                    <div class="color-picker">
                                        <label>Màu chính</label>
                                        <input type="color" class="color-input" id="primaryColor" value="#e50914">
                                    </div>
                                    <div class="color-picker">
                                        <label>Màu nền</label>
                                        <input type="color" class="color-input" id="backgroundColor" value="#0f0f0f">
                                    </div>
                                    <div class="color-picker">
                                        <label>Màu nhấn</label>
                                        <input type="color" class="color-input" id="accentColor" value="#00d474">
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">Hiệu ứng</label>
                                <div style="display: flex; flex-direction: column; gap: 12px; margin-top: 10px;">
                                    <label style="display: flex; align-items: center; gap: 10px; cursor: pointer;">
                                        <input type="checkbox" id="enableBlur" checked>
                                        <span>Hiệu ứng mờ thủy tinh</span>
                                    </label>
                                    <label style="display: flex; align-items: center; gap: 10px; cursor: pointer;">
                                        <input type="checkbox" id="enableAnimations" checked>
                                        <span>Hiệu ứng chuyển động</span>
                                    </label>
                                    <label style="display: flex; align-items: center; gap: 10px; cursor: pointer;">
                                        <input type="checkbox" id="enableShadows" checked>
                                        <span>Hiệu ứng đổ bóng</span>
                                    </label>
                                    <label style="display: flex; align-items: center; gap: 10px; cursor: pointer;">
                                        <input type="checkbox" id="enableGradients" checked>
                                        <span>Hiệu ứng gradient</span>
                                    </label>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">Chế độ tối/sáng</label>
                                <select class="form-control" id="themeMode">
                                    <option value="dark">Tối</option>
                                    <option value="light">Sáng</option>
                                    <option value="auto">Tự động</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <label class="form-label">Độ mờ backdrop</label>
                                <input type="range" class="form-control" id="blurAmount" min="0" max="30" value="15" style="padding: 0;">
                                <div style="display: flex; justify-content: space-between; font-size: 12px; color: var(--gray); margin-top: 5px;">
                                    <span>Tắt</span>
                                    <span>Vừa</span>
                                    <span>Mạnh</span>
                                </div>
                            </div>
                            
                            <button class="btn btn-success" id="updateThemeBtn" style="width: 100%; margin-top: 20px;">
                                <i class="fas fa-paint-brush"></i> CẬP NHẬT GIAO DIỆN
                            </button>
                        </div>
                    </div>
                </div>
                
                <div id="theme-settings" class="settings-tab-content">
                    <!-- Theme settings content -->
                </div>
                
                <div id="layout-settings" class="settings-tab-content">
                    <!-- Layout settings content -->
                </div>
                
                <div id="content-settings" class="settings-tab-content">
                    <!-- Content settings content -->
                </div>
            </div>
            
            <!-- Settings -->
            <div class="admin-content" id="settings">
                <div class="settings-tabs">
                    <button class="settings-tab active" data-settings-tab="api">API & Kết nối</button>
                    <button class="settings-tab" data-settings-tab="security">Bảo mật</button>
                    <button class="settings-tab" data-settings-tab="performance">Hiệu suất</button>
                    <button class="settings-tab" data-settings-tab="advanced">Nâng cao</button>
                </div>
                
                <div id="api-settings" class="settings-tab-content active">
                    <div style="background: var(--gradient-card); padding: 25px; border-radius: var(--radius); border: 1px solid var(--glass-border); margin-bottom: 25px; backdrop-filter: var(--blur);">
                        <h3 style="margin-bottom: 20px; color: white;">Cấu hình Google Sheets API</h3>
                        
                        <div class="form-group">
                            <label class="form-label">Google Sheets API URL *</label>
                            <input type="text" class="form-control" id="apiUrl" placeholder="https://script.google.com/macros/s/.../exec" required>
                            <small style="color: var(--gray); display: block; margin-top: 5px;">
                                URL từ Google Apps Script (deploy as Web App)
                            </small>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">API Secret Key *</label>
                            <input type="text" class="form-control" id="apiSecret" placeholder="ROPHIM_SECRET_2025" required>
                            <small style="color: var(--gray); display: block; margin-top: 5px;">
                                Key bảo mật (phải khớp với Google Apps Script)
                            </small>
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">Sheet ID</label>
                            <input type="text" class="form-control" id="sheetId" placeholder="1BxiMVs0XRA5nFMdKvBdBZjgmUUqptlbs74OgvE2upms">
                            <small style="color: var(--gray); display: block; margin-top: 5px;">
                                ID của Google Sheet (tùy chọn)
                            </small>
                        </div>
                        
                        <div style="display: flex; gap: 15px; margin-top: 25px;">
                            <button class="btn btn-success" id="saveApiSettings">
                                <i class="fas fa-save"></i> Lưu cài đặt
                            </button>
                            <button class="btn btn-info" id="testApiConnectionBtn">
                                <i class="fas fa-bolt"></i> Kiểm tra kết nối
                            </button>
                            <button class="btn btn-secondary" id="resetApiSettings">
                                <i class="fas fa-redo"></i> Đặt lại
                            </button>
                        </div>
                    </div>
                    
                    <div style="background: rgba(0, 150, 255, 0.1); padding: 20px; border-radius: var(--radius); border: 1px solid rgba(0, 150, 255, 0.2);">
                        <h4 style="color: var(--info); margin-bottom: 15px;"><i class="fas fa-info-circle"></i> Hướng dẫn cài đặt Google Sheets API</h4>
                        <div style="line-height: 1.7;">
                            <p>1. Tạo Google Sheets với các cột: ID, Title, Year, Rating, Duration, Genres, Description, VideoLink, Poster, BackupLink, Views, Likes, Status</p>
                            <p>2. Tạo Google Apps Script trong Sheets (Tools > Script editor)</p>
                            <p>3. Dán mã API được cung cấp và deploy với quyền "Anyone, even anonymous"</p>
                            <p>4. Copy URL API và Secret Key vào đây</p>
                            <p>5. Kiểm tra kết nối và lưu cài đặt</p>
                        </div>
                    </div>
                </div>
                
                <div id="security-settings" class="settings-tab-content">
                    <!-- Security settings content -->
                </div>
            </div>
            
            <!-- Backup -->
            <div class="admin-content" id="backup">
                <div class="backup-section">
                    <h3 style="margin-bottom: 20px; color: white;">Sao lưu & Khôi phục</h3>
                    
                    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 25px; margin-bottom: 30px;">
                        <div>
                            <h4 style="color: var(--success); margin-bottom: 15px;"><i class="fas fa-download"></i> Sao lưu dữ liệu</h4>
                            <p style="color: var(--gray); margin-bottom: 20px;">Tải xuống toàn bộ dữ liệu phim và cài đặt</p>
                            <button class="btn btn-success" id="backupDataBtn">
                                <i class="fas fa-file-export"></i> Xuất file JSON
                            </button>
                            <button class="btn btn-info" id="backupToDriveBtn" style="margin-left: 10px;">
                                <i class="fab fa-google-drive"></i> Lưu lên Drive
                            </button>
                        </div>
                        
                        <div>
                            <h4 style="color: var(--warning); margin-bottom: 15px;"><i class="fas fa-upload"></i> Khôi phục dữ liệu</h4>
                            <p style="color: var(--gray); margin-bottom: 20px;">Tải lên file backup để khôi phục</p>
                            <div class="form-group">
                                <input type="file" class="form-control" id="restoreFile" accept=".json">
                            </div>
                            <button class="btn btn-warning" id="restoreDataBtn">
                                <i class="fas fa-file-import"></i> Khôi phục từ file
                            </button>
                        </div>
                    </div>
                    
                    <div style="background: rgba(229, 9, 20, 0.1); padding: 20px; border-radius: var(--radius-sm); border: 1px solid rgba(229, 9, 20, 0.2);">
                        <h4 style="color: var(--primary); margin-bottom: 15px;"><i class="fas fa-exclamation-triangle"></i> Cảnh báo</h4>
                        <p style="color: var(--light-gray); line-height: 1.6;">
                            • Khôi phục dữ liệu sẽ ghi đè lên dữ liệu hiện tại<br>
                            • Luôn sao lưu trước khi thực hiện khôi phục<br>
                            • Chỉ sử dụng file backup từ chính hệ thống này
                        </p>
                    </div>
                </div>
                
                <div style="background: var(--gradient-card); padding: 25px; border-radius: var(--radius); border: 1px solid var(--glass-border); backdrop-filter: var(--blur);">
                    <h3 style="margin-bottom: 20px; color: white;">Lịch sử sao lưu</h3>
                    <div id="backupHistory">
                        <p style="color: var(--gray); text-align: center;">Chưa có bản sao lưu nào</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <div class="container footer-content">
            <div class="footer-info">
                <p>&copy; <span id="currentYear"></span> <span id="footerSiteTitle">RỔ PHIM</span> - <span id="footerTagline">Phim hay mỗi ngày</span></p>
                <p style="margin-top: 8px; font-size: 12px; color: var(--gray);">
                    <i class="fas fa-sync-alt"></i> Đồng bộ tự động mỗi 30s • 
                    <span id="footerStats">Đang tải...</span>
                </p>
            </div>
            <div class="footer-links">
                <a href="#" id="privacyLink">Chính sách</a>
                <a href="#" id="termsLink">Điều khoản</a>
                <a href="#" id="contactLink">Liên hệ</a>
                <a href="#" id="helpLink">Trợ giúp</a>
            </div>
        </div>
    </footer>

    <script>
        // ================= CONFIGURATION =================
        const DEFAULT_API_URL = "https://script.google.com/macros/s/YOUR_SCRIPT_ID/exec";
        const DEFAULT_API_SECRET = "ROPHIM_SECRET_2025";
        const DEFAULT_ADMIN_PASSWORD = "admin123";
        
        // ================= GLOBAL VARIABLES =================
        let movies = [];
        let comments = {};
        let currentMovieId = null;
        let isAdmin = false;
        let syncInterval = null;
        let apiUrl = DEFAULT_API_URL;
        let apiSecret = DEFAULT_API_SECRET;
        let adminPassword = DEFAULT_ADMIN_PASSWORD;
        let currentUser = "Khách";
        let connectionRetries = 0;
        const MAX_RETRIES = 3;
        
        // ================= DOM ELEMENTS =================
        const loadingSpinner = document.getElementById('loadingSpinner');
        const toast = document.getElementById('toast');
        const toastTitle = document.getElementById('toastTitle');
        const toastMessage = document.getElementById('toastMessage');
        const closeToast = document.getElementById('closeToast');
        const adminAccess = document.getElementById('adminAccess');
        const adminPasswordInput = document.getElementById('adminPassword');
        const apiKeyInput = document.getElementById('apiKey');
        const adminModeSelect = document.getElementById('adminMode');
        const loginBtn = document.getElementById('loginBtn');
        const cancelBtn = document.getElementById('cancelBtn');
        const logoContainer = document.getElementById('logoContainer');
        const logoPlaceholder = document.getElementById('logoPlaceholder');
        const logoImg = document.getElementById('logoImg');
        const logoTextIcon = document.getElementById('logoTextIcon');
        const siteTitle = document.getElementById('siteTitle');
        const siteTagline = document.getElementById('siteTagline');
        const syncStatus = document.getElementById('syncStatus');
        const syncStatusText = document.getElementById('syncStatusText');
        const adminPanel = document.getElementById('adminPanel');
        const closeAdmin = document.getElementById('closeAdmin');
        const viewSiteBtn = document.getElementById('viewSiteBtn');
        const syncNowBtn = document.getElementById('syncNowBtn');
        const videoPlayer = document.getElementById('videoPlayer');
        const videoPlaceholder = document.getElementById('videoPlaceholder');
        const videoTitle = document.getElementById('videoTitle');
        const videoYear = document.getElementById('videoYear');
        const videoRating = document.getElementById('videoRating');
        const videoDuration = document.getElementById('videoDuration');
        const videoViews = document.getElementById('videoViews');
        const videoLikes = document.getElementById('videoLikes');
        const videoDescription = document.getElementById('videoDescription');
        const playBtn = document.getElementById('playBtn');
        const fullscreenBtn = document.getElementById('fullscreenBtn');
        const likeBtn = document.getElementById('likeBtn');
        const shareBtn = document.getElementById('shareBtn');
        const moviesList = document.getElementById('moviesList');
        const moviesCount = document.getElementById('moviesCount');
        const searchInput = document.getElementById('searchInput');
        const adminTabs = document.querySelectorAll('.admin-tab');
        const adminContents = document.querySelectorAll('.admin-content');
        const addMovieForm = document.getElementById('addMovieForm');
        const adminMoviesGrid = document.getElementById('adminMoviesGrid');
        const totalMovies = document.getElementById('totalMovies');
        const totalViews = document.getElementById('totalViews');
        const totalLikes = document.getElementById('totalLikes');
        const totalComments = document.getElementById('totalComments');
        const lastSync = document.getElementById('lastSync');
        const onlineUsers = document.getElementById('onlineUsers');
        const apiUrlInput = document.getElementById('apiUrl');
        const apiSecretInput = document.getElementById('apiSecret');
        const saveApiSettings = document.getElementById('saveApiSettings');
        const testApiConnectionBtn = document.getElementById('testApiConnectionBtn');
        const resetApiSettings = document.getElementById('resetApiSettings');
        const currentYear = document.getElementById('currentYear');
        const footerSiteTitle = document.getElementById('footerSiteTitle');
        const footerTagline = document.getElementById('footerTagline');
        const footerStats = document.getElementById('footerStats');
        const commentsList = document.getElementById('commentsList');
        const commentsCount = document.getElementById('commentsCount');
        const commentInput = document.getElementById('commentInput');
        const submitComment = document.getElementById('submitComment');
        const searchAdminMovies = document.getElementById('searchAdminMovies');
        const filterCategory = document.getElementById('filterCategory');
        const refreshMoviesBtn = document.getElementById('refreshMoviesBtn');
        const testVideoLink = document.getElementById('testVideoLink');
        const posterPreview = document.getElementById('posterPreview');
        const posterPlaceholder = document.getElementById('posterPlaceholder');
        const bannerPreview = document.getElementById('bannerPreview');
        const bannerPlaceholder = document.getElementById('bannerPlaceholder');
        const moviePosterInput = document.getElementById('moviePoster');
        const movieBannerInput = document.getElementById('movieBanner');
        const updateLogoBtn = document.getElementById('updateLogoBtn');
        const updateThemeBtn = document.getElementById('updateThemeBtn');
        const primaryColor = document.getElementById('primaryColor');
        const backgroundColor = document.getElementById('backgroundColor');
        const accentColor = document.getElementById('accentColor');
        const enableBlur = document.getElementById('enableBlur');
        const enableAnimations = document.getElementById('enableAnimations');
        const enableShadows = document.getElementById('enableShadows');
        const enableGradients = document.getElementById('enableGradients');
        const themeMode = document.getElementById('themeMode');
        const blurAmount = document.getElementById('blurAmount');
        const newSiteTitle = document.getElementById('newSiteTitle');
        const newSiteTagline = document.getElementById('newSiteTagline');
        const newLogoText = document.getElementById('newLogoText');
        const newLogoImage = document.getElementById('newLogoImage');
        const currentLogoPreview = document.getElementById('currentLogoPreview');
        const currentLogoImg = document.getElementById('currentLogoImg');
        const currentLogoText = document.getElementById('currentLogoText');
        const currentSiteTitle = document.getElementById('currentSiteTitle');
        const currentSiteTagline = document.getElementById('currentSiteTagline');
        const backupDataBtn = document.getElementById('backupDataBtn');
        const backupToDriveBtn = document.getElementById('backupToDriveBtn');
        const restoreFile = document.getElementById('restoreFile');
        const restoreDataBtn = document.getElementById('restoreDataBtn');
        
        // ================= UTILITY FUNCTIONS =================
        function showToast(type, title, message, duration = 4000) {
            toast.className = `toast toast-${type}`;
            toastTitle.textContent = title;
            toastMessage.textContent = message;
            
            if (toast.timeout) clearTimeout(toast.timeout);
            
            toast.classList.add('show');
            
            toast.timeout = setTimeout(() => {
                toast.classList.remove('show');
            }, duration);
        }
        
        function showLoading(message = "Đang xử lý...") {
            loadingSpinner.querySelector('p').textContent = message;
            loadingSpinner.style.display = 'block';
        }
        
        function hideLoading() {
            loadingSpinner.style.display = 'none';
        }
        
        function generateUserId() {
            return 'user_' + Date.now() + '_' + Math.random().toString(36).substr(2, 9);
        }
        
        function formatNumber(num) {
            return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
        }
        
        function formatDate(date) {
            return new Date(date).toLocaleDateString('vi-VN', {
                day: '2-digit',
                month: '2-digit',
                year: 'numeric',
                hour: '2-digit',
                minute: '2-digit'
            });
        }
        
        // ================= SYNC FUNCTIONS - IMPROVED =================
        async function testConnection() {
            try {
                const response = await fetch(apiUrl + '?action=test&t=' + Date.now(), {
                    method: 'GET',
                    mode: 'no-cors'
                });
                return true;
            } catch (error) {
                console.log('Test connection failed, trying alternative method...');
                return false;
            }
        }
        
        async function syncMoviesFromAPI() {
            try {
                updateSyncStatus('Đang kết nối...', 'warning');
                connectionRetries++;
                
                // Kiểm tra kết nối trước
                const isConnected = await testConnection();
                if (!isConnected && connectionRetries > MAX_RETRIES) {
                    throw new Error('Không thể kết nối đến server sau nhiều lần thử');
                }
                
                showLoading('Đang đồng bộ dữ liệu...');
                
                // Sử dụng cả GET và POST thử
                let data;
                try {
                    const response = await fetch(apiUrl + '?action=getMovies&t=' + Date.now());
                    if (!response.ok) throw new Error('GET request failed');
                    data = await response.json();
                } catch (getError) {
                    // Thử phương thức POST
                    const formData = new URLSearchParams();
                    formData.append('action', 'getMovies');
                    formData.append('secret', apiSecret);
                    
                    const response = await fetch(apiUrl, {
                        method: 'POST',
                        body: formData,
                        headers: {
                            'Content-Type': 'application/x-www-form-urlencoded',
                        }
                    });
                    
                    if (!response.ok) throw new Error('POST request failed');
                    data = await response.json();
                }
                
                if (data.success && Array.isArray(data.movies)) {
                    movies = data.movies;
                    renderMovies();
                    if (isAdmin) {
                        renderAdminMovies();
                        updateStatistics();
                        updateAdminStats();
                    }
                    
                    const now = new Date();
                    lastSync.textContent = `${now.getHours().toString().padStart(2, '0')}:${now.getMinutes().toString().padStart(2, '0')}`;
                    
                    connectionRetries = 0;
                    updateSyncStatus(`Đã đồng bộ ${movies.length} phim`, 'success');
                    updateFooterStats();
                    
                    if (movies.length > 0 && !currentMovieId) {
                        setTimeout(() => playMovie(movies[0].id), 1000);
                    }
                    
                    if (currentMovieId) {
                        loadComments(currentMovieId);
                    }
                    
                    // Lưu vào localStorage để dùng offline
                    saveMoviesToStorage();
                    
                    return true;
                } else {
                    throw new Error(data.message || 'Dữ liệu không hợp lệ');
                }
            } catch (error) {
                console.error('Lỗi đồng bộ:', error);
                
                if (connectionRetries <= MAX_RETRIES) {
                    updateSyncStatus(`Thử lại kết nối (${connectionRetries}/${MAX_RETRIES})...`, 'warning');
                    setTimeout(syncMoviesFromAPI, 3000);
                    return false;
                }
                
                updateSyncStatus('Đang dùng dữ liệu offline', 'error');
                loadMoviesFromStorage();
                showToast('warning', 'Chế độ offline', 'Đang sử dụng dữ liệu đã lưu');
                return false;
            } finally {
                hideLoading();
            }
        }
        
        async function addMovieToAPI(movieData) {
            showLoading('Đang thêm phim...');
            
            try {
                // Kiểm tra link Google Drive
                if (movieData.videoLink && !movieData.videoLink.includes('/preview')) {
                    movieData.videoLink = movieData.videoLink.replace('/view', '/preview');
                }
                
                const formData = new URLSearchParams();
                formData.append('action', 'addMovie');
                formData.append('secret', apiSecret);
                formData.append('title', movieData.title);
                formData.append('year', movieData.year);
                formData.append('rating', movieData.rating || 7.0);
                formData.append('duration', movieData.duration || 120);
                formData.append('quality', movieData.quality || 'HD');
                formData.append('genres', movieData.genres);
                formData.append('actors', movieData.actors || '');
                formData.append('director', movieData.director || '');
                formData.append('description', movieData.description);
                formData.append('videoLink', movieData.videoLink);
                formData.append('backupLink', movieData.backupLink || '');
                formData.append('poster', movieData.poster);
                formData.append('banner', movieData.banner || '');
                formData.append('status', movieData.status || 'active');
                
                const response = await fetch(apiUrl, {
                    method: 'POST',
                    body: formData,
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    }
                });
                
                const data = await response.json();
                
                if (data.success) {
                    await syncMoviesFromAPI();
                    showToast('success', 'Thành công', 'Phim đã được thêm thành công');
                    return true;
                } else {
                    throw new Error(data.message || 'Lỗi từ server');
                }
            } catch (error) {
                console.error('Lỗi thêm phim:', error);
                
                // Fallback: Thêm vào local storage
                const newId = movies.length > 0 ? Math.max(...movies.map(m => m.id)) + 1 : 1;
                movies.push({
                    ...movieData,
                    id: newId,
                    views: 0,
                    likes: 0,
                    comments: 0,
                    status: movieData.status || 'active'
                });
                
                saveMoviesToStorage();
                renderMovies();
                if (isAdmin) renderAdminMovies();
                
                showToast('warning', 'Đã lưu cục bộ', 'Phim đã được lưu tạm, sẽ đồng bộ khi có mạng');
                return false;
            } finally {
                hideLoading();
            }
        }
        
        async function updateMovieInAPI(movieId, movieData) {
            showLoading('Đang cập nhật...');
            
            try {
                const formData = new URLSearchParams();
                formData.append('action', 'updateMovie');
                formData.append('secret', apiSecret);
                formData.append('id', movieId);
                Object.keys(movieData).forEach(key => {
                    formData.append(key, movieData[key]);
                });
                
                const response = await fetch(apiUrl, {
                    method: 'POST',
                    body: formData
                });
                
                const data = await response.json();
                
                if (data.success) {
                    await syncMoviesFromAPI();
                    showToast('success', 'Thành công', 'Phim đã được cập nhật');
                } else {
                    throw new Error(data.message);
                }
            } catch (error) {
                console.error('Lỗi cập nhật phim:', error);
                showToast('error', 'Lỗi', 'Không thể cập nhật phim');
            } finally {
                hideLoading();
            }
        }
        
        async function deleteMovieFromAPI(movieId) {
            if (!confirm('Bạn có chắc chắn muốn xóa phim này không?')) return;
            
            showLoading('Đang xóa phim...');
            
            try {
                const formData = new URLSearchParams();
                formData.append('action', 'deleteMovie');
                formData.append('secret', apiSecret);
                formData.append('id', movieId);
                
                const response = await fetch(apiUrl, {
                    method: 'POST',
                    body: formData
                });
                
                const data = await response.json();
                
                if (data.success) {
                    await syncMoviesFromAPI();
                    showToast('success', 'Thành công', 'Phim đã được xóa');
                } else {
                    throw new Error(data.message);
                }
            } catch (error) {
                console.error('Lỗi xóa phim:', error);
                showToast('error', 'Lỗi', 'Không thể xóa phim');
            } finally {
                hideLoading();
            }
        }
        
        async function addCommentToAPI(movieId, comment) {
            try {
                const userId = localStorage.getItem('ro-phim-user-id') || generateUserId();
                localStorage.setItem('ro-phim-user-id', userId);
                
                const formData = new URLSearchParams();
                formData.append('action', 'addComment');
                formData.append('secret', apiSecret);
                formData.append('movieId', movieId);
                formData.append('userId', userId);
                formData.append('userName', currentUser);
                formData.append('comment', comment);
                
                await fetch(apiUrl, {
                    method: 'POST',
                    body: formData
                });
                
                loadComments(movieId);
                showToast('success', 'Thành công', 'Bình luận đã được thêm');
            } catch (error) {
                console.error('Lỗi thêm bình luận:', error);
                addCommentToStorage(movieId, comment);
            }
        }
        
        async function loadComments(movieId) {
            try {
                const response = await fetch(`${apiUrl}?action=getComments&movieId=${movieId}`);
                const data = await response.json();
                
                if (data.success && data.comments) {
                    comments[movieId] = data.comments;
                    renderComments(movieId);
                }
            } catch (error) {
                console.error('Lỗi tải bình luận:', error);
                loadCommentsFromStorage(movieId);
            }
        }
        
        function updateSyncStatus(text, type = 'info') {
            const icon = syncStatus.querySelector('i');
            syncStatusText.textContent = text;
            
            switch(type) {
                case 'success':
                    syncStatus.style.background = 'rgba(0, 212, 116, 0.1)';
                    syncStatus.style.borderColor = 'rgba(0, 212, 116, 0.2)';
                    syncStatus.style.color = 'var(--success)';
                    icon.className = 'fas fa-check-circle';
                    break;
                case 'warning':
                    syncStatus.style.background = 'rgba(255, 165, 0, 0.1)';
                    syncStatus.style.borderColor = 'rgba(255, 165, 0, 0.2)';
                    syncStatus.style.color = 'var(--warning)';
                    icon.className = 'fas fa-sync-alt fa-spin';
                    break;
                case 'error':
                    syncStatus.style.background = 'rgba(229, 9, 20, 0.1)';
                    syncStatus.style.borderColor = 'rgba(229, 9, 20, 0.2)';
                    syncStatus.style.color = 'var(--primary)';
                    icon.className = 'fas fa-exclamation-triangle';
                    break;
                default:
                    syncStatus.style.background = 'rgba(255, 255, 255, 0.1)';
                    syncStatus.style.borderColor = 'rgba(255, 255, 255, 0.2)';
                    icon.className = 'fas fa-sync-alt';
            }
        }
        
        // ================= LOCAL STORAGE FUNCTIONS =================
        function loadMoviesFromStorage() {
            try {
                const savedMovies = localStorage.getItem('ro-phim-movies');
                if (savedMovies) {
                    movies = JSON.parse(savedMovies);
                    renderMovies();
                    if (isAdmin) {
                        renderAdminMovies();
                        updateStatistics();
                    }
                }
            } catch (e) {
                console.error('Lỗi đọc dữ liệu local:', e);
                movies = [];
            }
        }
        
        function saveMoviesToStorage() {
            try {
                localStorage.setItem('ro-phim-movies', JSON.stringify(movies));
            } catch (e) {
                console.error('Lỗi lưu dữ liệu local:', e);
            }
        }
        
        function loadCommentsFromStorage(movieId) {
            try {
                const savedComments = localStorage.getItem(`ro-phim-comments-${movieId}`);
                if (savedComments) {
                    comments[movieId] = JSON.parse(savedComments);
                    renderComments(movieId);
                } else {
                    comments[movieId] = [];
                }
            } catch (e) {
                comments[movieId] = [];
            }
        }
        
        function addCommentToStorage(movieId, comment) {
            if (!comments[movieId]) comments[movieId] = [];
            
            const userId = localStorage.getItem('ro-phim-user-id') || generateUserId();
            localStorage.setItem('ro-phim-user-id', userId);
            
            const newComment = {
                id: Date.now(),
                userId: userId,
                userName: currentUser,
                comment: comment,
                timestamp: new Date().toISOString()
            };
            
            comments[movieId].push(newComment);
            try {
                localStorage.setItem(`ro-phim-comments-${movieId}`, JSON.stringify(comments[movieId]));
            } catch (e) {
                console.error('Lỗi lưu bình luận:', e);
            }
            
            renderComments(movieId);
            showToast('success', 'Thành công', 'Bình luận đã được thêm');
        }
        
        function loadSettings() {
            try {
                const savedApiUrl = localStorage.getItem('ro-phim-api-url');
                const savedApiSecret = localStorage.getItem('ro-phim-api-secret');
                const savedAdminPassword = localStorage.getItem('ro-phim-admin-password');
                const savedSiteTitle = localStorage.getItem('ro-phim-site-title');
                const savedSiteTagline = localStorage.getItem('ro-phim-site-tagline');
                const savedLogoText = localStorage.getItem('ro-phim-logo-text');
                const savedLogoImage = localStorage.getItem('ro-phim-logo-image');
                const savedPrimaryColor = localStorage.getItem('ro-phim-primary-color');
                const savedBackgroundColor = localStorage.getItem('ro-phim-background-color');
                const savedAccentColor = localStorage.getItem('ro-phim-accent-color');
                
                if (savedApiUrl) {
                    apiUrl = savedApiUrl;
                    apiUrlInput.value = savedApiUrl;
                }
                
                if (savedApiSecret) {
                    apiSecret = savedApiSecret;
                    apiSecretInput.value = savedApiSecret;
                }
                
                if (savedAdminPassword) {
                    adminPassword = savedAdminPassword;
                }
                
                if (savedSiteTitle) {
                    siteTitle.textContent = savedSiteTitle;
                    currentSiteTitle.textContent = savedSiteTitle;
                    footerSiteTitle.textContent = savedSiteTitle;
                    newSiteTitle.value = savedSiteTitle;
                }
                
                if (savedSiteTagline) {
                    siteTagline.textContent = savedSiteTagline;
                    currentSiteTagline.textContent = savedSiteTagline;
                    footerTagline.textContent = savedSiteTagline;
                    newSiteTagline.value = savedSiteTagline;
                }
                
                if (savedLogoText) {
                    logoTextIcon.textContent = savedLogoText;
                    currentLogoText.textContent = savedLogoText;
                    newLogoText.value = savedLogoText;
                }
                
                if (savedLogoImage) {
                    logoImg.src = savedLogoImage;
                    logoImg.style.display = 'block';
                    logoTextIcon.style.display = 'none';
                    currentLogoImg.src = savedLogoImage;
                    currentLogoImg.style.display = 'block';
                }
                
                if (savedPrimaryColor) {
                    primaryColor.value = savedPrimaryColor;
                    updateCSSVariable('--primary', savedPrimaryColor);
                }
                
                if (savedBackgroundColor) {
                    backgroundColor.value = savedBackgroundColor;
                    updateCSSVariable('--dark', savedBackgroundColor);
                    updateCSSVariable('--darker', darkenColor(savedBackgroundColor, 20));
                }
                
                if (savedAccentColor) {
                    accentColor.value = savedAccentColor;
                    updateCSSVariable('--success', savedAccentColor);
                }
            } catch (e) {
                console.error('Lỗi đọc cài đặt:', e);
            }
        }
        
        function saveSettings() {
            try {
                localStorage.setItem('ro-phim-api-url', apiUrl);
                localStorage.setItem('ro-phim-api-secret', apiSecret);
                localStorage.setItem('ro-phim-admin-password', adminPassword);
            } catch (e) {
                console.error('Lỗi lưu cài đặt:', e);
            }
        }
        
        function updateCSSVariable(name, value) {
            document.documentElement.style.setProperty(name, value);
        }
        
        function darkenColor(color, percent) {
            const num = parseInt(color.replace("#", ""), 16);
            const amt = Math.round(2.55 * percent);
            const R = (num >> 16) - amt;
            const G = (num >> 8 & 0x00FF) - amt;
            const B = (num & 0x0000FF) - amt;
            return "#" + (
                0x1000000 +
                (R < 255 ? R < 1 ? 0 : R : 255) * 0x10000 +
                (G < 255 ? G < 1 ? 0 : G : 255) * 0x100 +
                (B < 255 ? B < 1 ? 0 : B : 255)
            ).toString(16).slice(1);
        }
        
        // ================= RENDER FUNCTIONS =================
        function renderMovies() {
            moviesList.innerHTML = '';
            moviesCount.textContent = movies.length;
            
            if (movies.length === 0) {
                moviesList.innerHTML = `
                    <div style="text-align: center; padding: 30px; color: var(--gray);">
                        <i class="fas fa-film" style="font-size: 40px; margin-bottom: 15px; opacity: 0.5;"></i>
                        <p>Chưa có phim nào trong danh sách</p>
                    </div>
                `;
                return;
            }
            
            const filteredMovies = movies.filter(movie => 
                movie.status !== 'inactive' && movie.status !== 'hidden'
            );
            
            filteredMovies.forEach(movie => {
                const movieItem = document.createElement('div');
                movieItem.className = `movie-item ${currentMovieId === movie.id ? 'active' : ''}`;
                movieItem.dataset.id = movie.id;
                
                movieItem.innerHTML = `
                    <img src="${movie.poster}" alt="${movie.title}" class="movie-item-poster" 
                         onerror="this.src='https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80'">
                    <div class="movie-item-info">
                        <div class="movie-item-title">${movie.title}</div>
                        <div class="movie-item-meta">
                            <span>${movie.year}</span> • 
                            <span><i class="fas fa-star"></i> ${movie.rating || 'N/A'}</span> • 
                            <span>${movie.duration || 'N/A'} phút</span>
                        </div>
                        ${movie.quality ? `<div style="font-size: 11px; color: var(--primary); margin-top: 5px; background: rgba(229, 9, 20, 0.1); padding: 2px 6px; border-radius: 3px; display: inline-block;">${movie.quality}</div>` : ''}
                    </div>
                `;
                
                movieItem.addEventListener('click', () => {
                    playMovie(movie.id);
                });
                
                moviesList.appendChild(movieItem);
            });
        }
        
        function renderAdminMovies() {
            adminMoviesGrid.innerHTML = '';
            totalMovies.textContent = movies.length;
            
            let totalViewsCount = 0;
            let totalLikesCount = 0;
            let totalCommentsCount = 0;
            
            movies.forEach(movie => {
                totalViewsCount += movie.views || 0;
                totalLikesCount += movie.likes || 0;
                totalCommentsCount += movie.comments || 0;
                
                const movieCard = document.createElement('div');
                movieCard.className = 'admin-movie-card';
                movieCard.dataset.id = movie.id;
                
                const statusBadge = movie.status === 'active' ? 
                    '<span style="background: rgba(0, 212, 116, 0.1); color: var(--success); padding: 2px 8px; border-radius: 10px; font-size: 11px; font-weight: 600;">Hoạt động</span>' :
                    movie.status === 'inactive' ? 
                    '<span style="background: rgba(255, 165, 0, 0.1); color: var(--warning); padding: 2px 8px; border-radius: 10px; font-size: 11px; font-weight: 600;">Ẩn</span>' :
                    '<span style="background: rgba(0, 150, 255, 0.1); color: var(--info); padding: 2px 8px; border-radius: 10px; font-size: 11px; font-weight: 600;">Sắp chiếu</span>';
                
                movieCard.innerHTML = `
                    <div class="admin-movie-header">
                        <img src="${movie.poster}" alt="${movie.title}" class="admin-movie-poster" 
                             onerror="this.src='https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80'">
                        <div class="admin-movie-title">${movie.title}</div>
                        <div class="admin-movie-actions">
                            <button class="admin-action-btn edit-btn" data-id="${movie.id}">
                                <i class="fas fa-edit"></i> Sửa
                            </button>
                            <button class="admin-action-btn delete-btn" data-id="${movie.id}">
                                <i class="fas fa-trash"></i> Xóa
                            </button>
                        </div>
                    </div>
                    <div style="margin-top: 10px; font-size: 13px; color: var(--gray); display: flex; flex-wrap: wrap; gap: 10px; align-items: center;">
                        <span>${movie.year}</span> • 
                        <span><i class="fas fa-star"></i> ${movie.rating || 'N/A'}</span> • 
                        <span><i class="fas fa-clock"></i> ${movie.duration || 'N/A'} phút</span>
                        <div style="margin-left: auto;">${statusBadge}</div>
                    </div>
                    <div style="font-size: 12px; color: var(--gray); margin-top: 8px; display: flex; gap: 15px;">
                        <span><i class="fas fa-eye"></i> ${movie.views || 0}</span>
                        <span><i class="fas fa-heart"></i> ${movie.likes || 0}</span>
                        <span><i class="fas fa-comment"></i> ${movie.comments || 0}</span>
                    </div>
                `;
                
                adminMoviesGrid.appendChild(movieCard);
                
                const editBtn = movieCard.querySelector('.edit-btn');
                const deleteBtn = movieCard.querySelector('.delete-btn');
                
                editBtn.addEventListener('click', (e) => {
                    e.stopPropagation();
                    editMovie(movie.id);
                });
                
                deleteBtn.addEventListener('click', (e) => {
                    e.stopPropagation();
                    deleteMovieFromAPI(movie.id);
                });
            });
            
            totalViews.textContent = formatNumber(totalViewsCount);
            totalLikes.textContent = formatNumber(totalLikesCount);
            totalComments.textContent = formatNumber(totalCommentsCount);
        }
        
        function renderComments(movieId) {
            const movieComments = comments[movieId] || [];
            commentsCount.textContent = movieComments.length;
            
            if (movieComments.length === 0) {
                commentsList.innerHTML = `
                    <div class="comment-item" style="text-align: center; color: var(--gray);">
                        <i class="fas fa-comments" style="font-size: 40px; margin-bottom: 10px;"></i>
                        <p>Chưa có bình luận nào. Hãy là người đầu tiên bình luận!</p>
                    </div>
                `;
                return;
            }
            
            commentsList.innerHTML = '';
            movieComments.slice().reverse().forEach(comment => {
                const commentDate = new Date(comment.timestamp);
                const timeString = commentDate.toLocaleDateString('vi-VN') + ' ' + 
                                 commentDate.toLocaleTimeString('vi-VN', { hour: '2-digit', minute: '2-digit' });
                
                const commentItem = document.createElement('div');
                commentItem.className = 'comment-item';
                commentItem.innerHTML = `
                    <div class="comment-header">
                        <div class="comment-avatar">${comment.userName.charAt(0).toUpperCase()}</div>
                        <div class="comment-info">
                            <div class="comment-author">${comment.userName}</div>
                            <div class="comment-time">${timeString}</div>
                        </div>
                    </div>
                    <div class="comment-text">${comment.comment}</div>
                `;
                commentsList.appendChild(commentItem);
            });
        }
        
        function updateStatistics() {
            totalMovies.textContent = movies.length;
            let totalViewsCount = 0;
            let totalLikesCount = 0;
            
            movies.forEach(movie => {
                totalViewsCount += movie.views || 0;
                totalLikesCount += movie.likes || 0;
            });
            
            totalViews.textContent = formatNumber(totalViewsCount);
            totalLikes.textContent = formatNumber(totalLikesCount);
        }
        
        function updateAdminStats() {
            // Tính toán thêm thống kê cho admin
            const totalCommentsCount = Object.values(comments).reduce((sum, movieComments) => sum + (movieComments?.length || 0), 0);
            totalComments.textContent = formatNumber(totalCommentsCount);
            
            // Cập nhật online users (mô phỏng)
            onlineUsers.textContent = Math.floor(Math.random() * 10) + 1;
        }
        
        function updateFooterStats() {
            if (movies.length > 0) {
                const totalViewsCount = movies.reduce((sum, movie) => sum + (movie.views || 0), 0);
                footerStats.textContent = `${movies.length} phim • ${formatNumber(totalViewsCount)} lượt xem`;
            } else {
                footerStats.textContent = 'Đang tải dữ liệu...';
            }
        }
        
        // ================= MOVIE FUNCTIONS =================
        function playMovie(movieId) {
            const movie = movies.find(m => m.id == movieId);
            if (!movie) return;
            
            currentMovieId = movieId;
            
            // Cập nhật video player với link Google Drive đúng định dạng
            let videoLink = movie.videoLink;
            if (videoLink && videoLink.includes('drive.google.com')) {
                if (videoLink.includes('/view')) {
                    videoLink = videoLink.replace('/view', '/preview');
                }
                if (!videoLink.includes('/preview')) {
                    videoLink = videoLink + (videoLink.includes('?') ? '&' : '?') + 'preview';
                }
            }
            
            videoPlayer.src = videoLink;
            videoPlaceholder.style.display = 'none';
            videoPlayer.style.display = 'block';
            
            // Cập nhật thông tin phim
            videoTitle.textContent = movie.title;
            videoYear.textContent = movie.year;
            videoRating.textContent = `${movie.rating || 'N/A'}/10`;
            videoDuration.textContent = `${movie.duration || 'N/A'} phút`;
            videoViews.textContent = `${movie.views || 0} lượt xem`;
            videoLikes.textContent = `${movie.likes || 0} lượt thích`;
            videoDescription.textContent = movie.description;
            
            // Bật các nút chức năng
            playBtn.disabled = false;
            likeBtn.disabled = false;
            shareBtn.disabled = false;
            
            // Cập nhật trạng thái active
            document.querySelectorAll('.movie-item').forEach(item => {
                item.classList.remove('active');
                if (item.dataset.id == movieId) {
                    item.classList.add('active');
                }
            });
            
            // Cập nhật lượt xem
            if (movie.views === undefined) movie.views = 0;
            movie.views++;
            updateMovieViews(movieId, movie.views);
            
            // Tải bình luận
            loadComments(movieId);
            
            // Tự động phát sau 1 giây
            setTimeout(() => {
                try {
                    videoPlayer.contentWindow.postMessage('{"event":"command","func":"playVideo","args":""}', '*');
                } catch (e) {
                    console.log('Không hỗ trợ tự động phát');
                }
            }, 1000);
        }
        
        async function updateMovieViews(movieId, views) {
            try {
                const formData = new URLSearchParams();
                formData.append('action', 'updateViews');
                formData.append('secret', apiSecret);
                formData.append('id', movieId);
                formData.append('views', views);
                
                await fetch(apiUrl, {
                    method: 'POST',
                    body: formData
                });
            } catch (error) {
                console.error('Lỗi cập nhật lượt xem:', error);
            }
        }
        
        function editMovie(movieId) {
            const movie = movies.find(m => m.id == movieId);
            if (!movie) return;
            
            // Điền dữ liệu vào form
            document.getElementById('movieTitle').value = movie.title;
            document.getElementById('movieYear').value = movie.year;
            document.getElementById('movieRating').value = movie.rating || 7.0;
            document.getElementById('movieDuration').value = movie.duration || 120;
            document.getElementById('movieQuality').value = movie.quality || 'HD';
            document.getElementById('movieGenres').value = Array.isArray(movie.genres) ? movie.genres.join(', ') : movie.genres;
            document.getElementById('movieActors').value = movie.actors || '';
            document.getElementById('movieDirector').value = movie.director || '';
            document.getElementById('movieDescription').value = movie.description;
            document.getElementById('movieVideoLink').value = movie.videoLink;
            document.getElementById('movieBackupLink').value = movie.backupLink || '';
            document.getElementById('moviePoster').value = movie.poster;
            document.getElementById('movieBanner').value = movie.banner || '';
            
            // Set trạng thái
            const statusRadio = document.querySelector(`input[name="movieStatus"][value="${movie.status || 'active'}"]`);
            if (statusRadio) statusRadio.checked = true;
            
            // Chuyển sang tab thêm phim (chế độ chỉnh sửa)
            switchAdminTab('add-movie');
            
            // Cập nhật nút submit
            const submitBtn = addMovieForm.querySelector('button[type="submit"]');
            submitBtn.innerHTML = '<i class="fas fa-save"></i> CẬP NHẬT PHIM';
            submitBtn.dataset.mode = 'update';
            submitBtn.dataset.movieId = movieId;
        }
        
        // ================= ADMIN FUNCTIONS =================
        function switchAdminTab(tabId) {
            adminTabs.forEach(tab => {
                tab.classList.toggle('active', tab.dataset.tab === tabId);
            });
            
            adminContents.forEach(content => {
                content.classList.toggle('active', content.id === tabId);
            });
        }
        
        function updateLogoAndBrand() {
            const newTitle = newSiteTitle.value.trim();
            const newTagline = newSiteTagline.value.trim();
            const newLogoTextVal = newLogoText.value.trim();
            const newLogoImageVal = newLogoImage.value.trim();
            
            if (!newTitle) {
                showToast('error', 'Lỗi', 'Vui lòng nhập tên website');
                return;
            }
            
            // Cập nhật logo
            if (newLogoImageVal) {
                // Sử dụng logo hình ảnh
                logoImg.src = newLogoImageVal;
                logoImg.style.display = 'block';
                logoTextIcon.style.display = 'none';
                currentLogoImg.src = newLogoImageVal;
                currentLogoImg.style.display = 'block';
                currentLogoText.style.display = 'none';
                
                // Lưu vào localStorage
                localStorage.setItem('ro-phim-logo-image', newLogoImageVal);
            } else if (newLogoTextVal) {
                // Sử dụng logo text
                logoImg.style.display = 'none';
                logoTextIcon.style.display = 'block';
                logoTextIcon.textContent = newLogoTextVal;
                currentLogoImg.style.display = 'none';
                currentLogoText.style.display = 'block';
                currentLogoText.textContent = newLogoTextVal;
                
                // Xóa logo image khỏi localStorage
                localStorage.removeItem('ro-phim-logo-image');
            }
            
            // Cập nhật tên và tagline
            siteTitle.textContent = newTitle;
            currentSiteTitle.textContent = newTitle;
            footerSiteTitle.textContent = newTitle;
            
            siteTagline.textContent = newTagline;
            currentSiteTagline.textContent = newTagline;
            footerTagline.textContent = newTagline;
            
            // Lưu vào localStorage
            localStorage.setItem('ro-phim-site-title', newTitle);
            localStorage.setItem('ro-phim-site-tagline', newTagline);
            if (newLogoTextVal) {
                localStorage.setItem('ro-phim-logo-text', newLogoTextVal);
            }
            
            showToast('success', 'Thành công', 'Đã cập nhật branding');
        }
        
        function updateThemeSettings() {
            // Cập nhật màu sắc
            updateCSSVariable('--primary', primaryColor.value);
            updateCSSVariable('--dark', backgroundColor.value);
            updateCSSVariable('--darker', darkenColor(backgroundColor.value, 20));
            updateCSSVariable('--success', accentColor.value);
            
            // Cập nhật hiệu ứng blur
            if (enableBlur.checked) {
                updateCSSVariable('--blur', `blur(${blurAmount.value}px)`);
            } else {
                updateCSSVariable('--blur', 'none');
            }
            
            // Cập nhật hiệu ứng chuyển động
            if (!enableAnimations.checked) {
                document.querySelectorAll('*').forEach(el => {
                    el.style.transition = 'none';
                });
            }
            
            // Cập nhật hiệu ứng đổ bóng
            if (!enableShadows.checked) {
                updateCSSVariable('--shadow', 'none');
                updateCSSVariable('--shadow-light', 'none');
            }
            
            // Cập nhật hiệu ứng gradient
            if (!enableGradients.checked) {
                updateCSSVariable('--gradient', primaryColor.value);
                updateCSSVariable('--gradient-dark', backgroundColor.value);
                updateCSSVariable('--gradient-card', backgroundColor.value);
            }
            
            // Lưu vào localStorage
            localStorage.setItem('ro-phim-primary-color', primaryColor.value);
            localStorage.setItem('ro-phim-background-color', backgroundColor.value);
            localStorage.setItem('ro-phim-accent-color', accentColor.value);
            localStorage.setItem('ro-phim-enable-blur', enableBlur.checked);
            localStorage.setItem('ro-phim-enable-animations', enableAnimations.checked);
            localStorage.setItem('ro-phim-enable-shadows', enableShadows.checked);
            localStorage.setItem('ro-phim-enable-gradients', enableGradients.checked);
            localStorage.setItem('ro-phim-theme-mode', themeMode.value);
            localStorage.setItem('ro-phim-blur-amount', blurAmount.value);
            
            showToast('success', 'Thành công', 'Đã cập nhật giao diện');
            
            // Tự động reload nếu cần
            if (themeMode.value === 'light') {
                setTimeout(() => {
                    if (confirm('Cần reload trang để áp dụng chế độ sáng. Reload ngay?')) {
                        location.reload();
                    }
                }, 500);
            }
        }
        
        // ================= INITIALIZATION =================
        function init() {
            // Set current year
            currentYear.textContent = new Date().getFullYear();
            
            // Initialize user
            if (!localStorage.getItem('ro-phim-user-id')) {
                localStorage.setItem('ro-phim-user-id', generateUserId());
            }
            
            // Initialize user name
            const savedUserName = localStorage.getItem('ro-phim-user-name');
            if (savedUserName) {
                currentUser = savedUserName;
            } else {
                const randomNames = ['Khách', 'Người xem', 'Thành viên', 'Fan điện ảnh'];
                currentUser = randomNames[Math.floor(Math.random() * randomNames.length)];
                localStorage.setItem('ro-phim-user-name', currentUser);
            }
            
            // Load settings
            loadSettings();
            
            // Check admin status
            const savedAuth = localStorage.getItem('ro-phim-admin-authenticated');
            if (savedAuth === 'true') {
                isAdmin = true;
                syncInterval = setInterval(syncMoviesFromAPI, 30000); // 30 giây cho admin
            } else {
                syncInterval = setInterval(syncMoviesFromAPI, 60000); // 60 giây cho user
            }
            
            // Initial sync
            setTimeout(() => syncMoviesFromAPI(), 1000);
            
            // Setup event listeners
            setupEventListeners();
        }
        
        function setupEventListeners() {
            // Toast close
            closeToast.addEventListener('click', () => {
                toast.classList.remove('show');
            });
            
            // Secret admin access: Triple click on logo
            let logoClickCount = 0;
            let logoClickTimer;
            logoContainer.addEventListener('click', () => {
                logoClickCount++;
                
                if (logoClickTimer) {
                    clearTimeout(logoClickTimer);
                }
                
                logoClickTimer = setTimeout(() => {
                    logoClickCount = 0;
                }, 1500);
                
                if (logoClickCount === 3) {
                    logoClickCount = 0;
                    adminAccess.classList.add('active');
                    adminPasswordInput.focus();
                    showToast('info', 'Chế độ quản trị', 'Nhập mật khẩu để truy cập');
                }
            });
            
            // Admin login
            loginBtn.addEventListener('click', () => {
                const password = adminPasswordInput.value;
                const apiKey = apiKeyInput.value;
                const mode = adminModeSelect.value;
                
                if (password === adminPassword) {
                    if (mode === 'admin') {
                        isAdmin = true;
                        localStorage.setItem('ro-phim-admin-authenticated', 'true');
                        adminPanel.classList.add('active');
                        
                        clearInterval(syncInterval);
                        syncInterval = setInterval(syncMoviesFromAPI, 30000);
                        syncMoviesFromAPI();
                        
                        showToast('success', 'Đăng nhập thành công', 'Chào mừng Quản trị viên');
                    } else {
                        showToast('info', 'Chế độ xem', 'Bạn đang ở chế độ xem trang chủ');
                    }
                    
                    adminAccess.classList.remove('active');
                    adminPasswordInput.value = '';
                    apiKeyInput.value = '';
                    
                    if (apiKey) {
                        apiSecret = apiKey;
                        apiSecretInput.value = apiKey;
                        saveSettings();
                    }
                } else {
                    showToast('error', 'Lỗi đăng nhập', 'Mật khẩu không đúng');
                    adminPasswordInput.value = '';
                    adminPasswordInput.focus();
                }
            });
            
            cancelBtn.addEventListener('click', () => {
                adminAccess.classList.remove('active');
                adminPasswordInput.value = '';
                apiKeyInput.value = '';
            });
            
            // Search
            searchInput.addEventListener('input', () => {
                const query = searchInput.value.toLowerCase().trim();
                
                document.querySelectorAll('.movie-item').forEach(item => {
                    const movieId = parseInt(item.dataset.id);
                    const movie = movies.find(m => m.id === movieId);
                    
                    if (movie && (
                        movie.title.toLowerCase().includes(query) ||
                        (movie.description && movie.description.toLowerCase().includes(query)) ||
                        (movie.genres && movie.genres.toLowerCase().includes(query)) ||
                        (movie.actors && movie.actors.toLowerCase().includes(query))
                    )) {
                        item.style.display = 'flex';
                    } else {
                        item.style.display = 'none';
                    }
                });
            });
            
            // Play button
            playBtn.addEventListener('click', () => {
                if (currentMovieId) {
                    try {
                        videoPlayer.contentWindow.postMessage('{"event":"command","func":"playVideo","args":""}', '*');
                        showToast('info', 'Đang phát', 'Bắt đầu phát phim');
                    } catch (e) {
                        showToast('error', 'Lỗi', 'Không thể phát video');
                    }
                }
            });
            
            // Fullscreen
            fullscreenBtn.addEventListener('click', () => {
                if (videoPlayer.requestFullscreen) {
                    videoPlayer.requestFullscreen();
                } else if (videoPlayer.webkitRequestFullscreen) {
                    videoPlayer.webkitRequestFullscreen();
                } else if (videoPlayer.mozRequestFullScreen) {
                    videoPlayer.mozRequestFullScreen();
                } else if (videoPlayer.msRequestFullscreen) {
                    videoPlayer.msRequestFullscreen();
                }
            });
            
            // Like button
            likeBtn.addEventListener('click', () => {
                if (currentMovieId) {
                    const movie = movies.find(m => m.id == currentMovieId);
                    if (movie) {
                        if (movie.likes === undefined) movie.likes = 0;
                        movie.likes++;
                        videoLikes.textContent = `${movie.likes} lượt thích`;
                        
                        likeBtn.innerHTML = '<i class="fas fa-heart"></i> Đã thích';
                        likeBtn.style.background = 'var(--primary)';
                        likeBtn.disabled = true;
                        
                        showToast('success', 'Đã thích', 'Cảm ơn bạn đã thích phim này');
                    }
                }
            });
            
            // Share button
            shareBtn.addEventListener('click', () => {
                if (currentMovieId) {
                    const movie = movies.find(m => m.id == currentMovieId);
                    if (movie) {
                        const shareText = `Đang xem "${movie.title}" (${movie.year}) trên Rổ Phim`;
                        const shareUrl = window.location.href.split('#')[0] + `#movie=${currentMovieId}`;
                        
                        if (navigator.share) {
                            navigator.share({
                                title: movie.title,
                                text: shareText,
                                url: shareUrl
                            });
                        } else {
                            navigator.clipboard.writeText(shareUrl).then(() => {
                                showToast('success', 'Đã copy', 'Link đã được sao chép vào clipboard');
                            });
                        }
                    }
                }
            });
            
            // Submit comment
            submitComment.addEventListener('click', () => {
                const comment = commentInput.value.trim();
                if (!comment) {
                    showToast('error', 'Lỗi', 'Vui lòng nhập bình luận');
                    return;
                }
                
                if (!currentMovieId) {
                    showToast('error', 'Lỗi', 'Vui lòng chọn phim trước');
                    return;
                }
                
                addCommentToAPI(currentMovieId, comment);
                commentInput.value = '';
            });
            
            commentInput.addEventListener('keydown', (e) => {
                if (e.key === 'Enter' && !e.shiftKey) {
                    e.preventDefault();
                    submitComment.click();
                }
            });
            
            // Admin panel controls
            closeAdmin.addEventListener('click', () => {
                adminPanel.classList.remove('active');
            });
            
            viewSiteBtn.addEventListener('click', () => {
                adminPanel.classList.remove('active');
                window.scrollTo({ top: 0, behavior: 'smooth' });
            });
            
            syncNowBtn.addEventListener('click', () => {
                syncMoviesFromAPI();
            });
            
            // Admin tabs
            adminTabs.forEach(tab => {
                tab.addEventListener('click', () => {
                    switchAdminTab(tab.dataset.tab);
                });
            });
            
            // Settings tabs
            document.querySelectorAll('.settings-tab').forEach(tab => {
                tab.addEventListener('click', () => {
                    const tabId = tab.dataset.settingsTab;
                    
                    document.querySelectorAll('.settings-tab').forEach(t => {
                        t.classList.remove('active');
                    });
                    tab.classList.add('active');
                    
                    document.querySelectorAll('.settings-tab-content').forEach(content => {
                        content.classList.remove('active');
                    });
                    document.getElementById(tabId + '-settings').classList.add('active');
                });
            });
            
            // Add movie form
            addMovieForm.addEventListener('submit', async (e) => {
                e.preventDefault();
                
                const submitBtn = addMovieForm.querySelector('button[type="submit"]');
                const isUpdateMode = submitBtn.dataset.mode === 'update';
                const movieId = isUpdateMode ? parseInt(submitBtn.dataset.movieId) : null;
                
                const movieData = {
                    title: document.getElementById('movieTitle').value,
                    year: parseInt(document.getElementById('movieYear').value),
                    rating: parseFloat(document.getElementById('movieRating').value),
                    duration: parseInt(document.getElementById('movieDuration').value),
                    quality: document.getElementById('movieQuality').value,
                    genres: document.getElementById('movieGenres').value,
                    actors: document.getElementById('movieActors').value,
                    director: document.getElementById('movieDirector').value,
                    description: document.getElementById('movieDescription').value,
                    videoLink: document.getElementById('movieVideoLink').value,
                    backupLink: document.getElementById('movieBackupLink').value || '',
                    poster: document.getElementById('moviePoster').value,
                    banner: document.getElementById('movieBanner').value || '',
                    status: document.querySelector('input[name="movieStatus"]:checked').value
                };
                
                if (isUpdateMode) {
                    await updateMovieInAPI(movieId, movieData);
                } else {
                    await addMovieToAPI(movieData);
                }
                
                // Reset form
                addMovieForm.reset();
                submitBtn.innerHTML = '<i class="fas fa-plus"></i> THÊM PHIM MỚI';
                delete submitBtn.dataset.mode;
                delete submitBtn.dataset.movieId;
                
                // Switch to movies tab
                switchAdminTab('movies');
            });
            
            // Test video link
            testVideoLink.addEventListener('click', () => {
                const videoLink = document.getElementById('movieVideoLink').value;
                if (!videoLink) {
                    showToast('error', 'Lỗi', 'Vui lòng nhập link video trước');
                    return;
                }
                
                // Mở link trong tab mới để kiểm tra
                window.open(videoLink, '_blank');
                showToast('info', 'Kiểm tra link', 'Đang mở link video trong tab mới...');
            });
            
            // Poster preview
            moviePosterInput.addEventListener('input', () => {
                const url = moviePosterInput.value;
                if (url) {
                    posterPreview.src = url;
                    posterPreview.style.display = 'block';
                    posterPlaceholder.style.display = 'none';
                } else {
                    posterPreview.style.display = 'none';
                    posterPlaceholder.style.display = 'flex';
                }
            });
            
            // Banner preview
            movieBannerInput.addEventListener('input', () => {
                const url = movieBannerInput.value;
                if (url) {
                    bannerPreview.src = url;
                    bannerPreview.style.display = 'block';
                    bannerPlaceholder.style.display = 'none';
                } else {
                    bannerPreview.style.display = 'none';
                    bannerPlaceholder.style.display = 'flex';
                }
            });
            
            // Update logo
            updateLogoBtn.addEventListener('click', updateLogoAndBrand);
            
            // Update theme
            updateThemeBtn.addEventListener('click', updateThemeSettings);
            
            // Save API settings
            saveApiSettings.addEventListener('click', () => {
                apiUrl = apiUrlInput.value || DEFAULT_API_URL;
                apiSecret = apiSecretInput.value || DEFAULT_API_SECRET;
                
                saveSettings();
                showToast('success', 'Đã lưu', 'Cài đặt API đã được lưu');
                syncMoviesFromAPI();
            });
            
            // Test API connection
            testApiConnectionBtn.addEventListener('click', async () => {
                showLoading('Đang kiểm tra kết nối...');
                try {
                    const connected = await testConnection();
                    if (connected) {
                        showToast('success', 'Kết nối thành công', 'API đang hoạt động tốt');
                    } else {
                        showToast('warning', 'Cảnh báo', 'Không thể kiểm tra kết nối, nhưng có thể vẫn hoạt động');
                    }
                } catch (error) {
                    showToast('error', 'Lỗi', 'Không thể kết nối đến API');
                } finally {
                    hideLoading();
                }
            });
            
            // Reset API settings
            resetApiSettings.addEventListener('click', () => {
                if (confirm('Bạn có chắc chắn muốn đặt lại cài đặt API?')) {
                    apiUrlInput.value = DEFAULT_API_URL;
                    apiSecretInput.value = DEFAULT_API_SECRET;
                    showToast('info', 'Đã đặt lại', 'Cài đặt đã được đặt về mặc định');
                }
            });
            
            // Backup data
            backupDataBtn.addEventListener('click', () => {
                const backupData = {
                    movies: movies,
                    settings: {
                        apiUrl: apiUrl,
                        apiSecret: apiSecret,
                        siteTitle: siteTitle.textContent,
                        siteTagline: siteTagline.textContent
                    },
                    timestamp: new Date().toISOString(),
                    version: '1.0'
                };
                
                const dataStr = JSON.stringify(backupData, null, 2);
                const dataBlob = new Blob([dataStr], {type: 'application/json'});
                const url = URL.createObjectURL(dataBlob);
                
                const link = document.createElement('a');
                link.href = url;
                link.download = `rophim-backup-${new Date().toISOString().split('T')[0]}.json`;
                link.click();
                
                URL.revokeObjectURL(url);
                showToast('success', 'Đã sao lưu', 'Dữ liệu đã được tải xuống');
            });
            
            // Restore data
            restoreDataBtn.addEventListener('click', () => {
                const file = restoreFile.files[0];
                if (!file) {
                    showToast('error', 'Lỗi', 'Vui lòng chọn file backup');
                    return;
                }
                
                if (!confirm('CẢNH BÁO: Khôi phục sẽ ghi đè lên dữ liệu hiện tại. Tiếp tục?')) {
                    return;
                }
                
                const reader = new FileReader();
                reader.onload = function(e) {
                    try {
                        const backupData = JSON.parse(e.target.result);
                        
                        if (backupData.movies && Array.isArray(backupData.movies)) {
                            movies = backupData.movies;
                            saveMoviesToStorage();
                            renderMovies();
                            if (isAdmin) renderAdminMovies();
                            
                            if (backupData.settings) {
                                if (backupData.settings.apiUrl) {
                                    apiUrl = backupData.settings.apiUrl;
                                    apiUrlInput.value = apiUrl;
                                }
                                if (backupData.settings.apiSecret) {
                                    apiSecret = backupData.settings.apiSecret;
                                    apiSecretInput.value = apiSecret;
                                }
                                saveSettings();
                            }
                            
                            showToast('success', 'Khôi phục thành công', 'Dữ liệu đã được khôi phục');
                            syncMoviesFromAPI();
                        } else {
                            throw new Error('File backup không hợp lệ');
                        }
                    } catch (error) {
                        showToast('error', 'Lỗi', 'Không thể đọc file backup');
                    }
                };
                reader.readAsText(file);
            });
            
            // Enter key for admin login
            adminPasswordInput.addEventListener('keypress', (e) => {
                if (e.key === 'Enter') loginBtn.click();
            });
            
            apiKeyInput.addEventListener('keypress', (e) => {
                if (e.key === 'Enter') loginBtn.click();
            });
        }
        
        // ================= START APPLICATION =================
        document.addEventListener('DOMContentLoaded', init);
    </script>
</body>
</html>
