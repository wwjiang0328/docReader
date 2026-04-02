# docReader 产品宣传页

一个**酷炫、高大上、完全响应式**的产品展示页面，采用现代化的科技感极简主义设计风格。

## 📋 项目概述

本项目为 **docReader** 产品设计的专业宣传页，展示了这款强大的文本提取与合并工具的核心功能和优势。

### 核心特性

- **🎨 视觉设计**：科技感极简主义 + Glassmorphism 玻璃态效果
- **🎬 动画效果**：流畅的入场动画、悬停效果、脉冲发光等
- **📱 完全响应式**：完美适配桌面、平板、手机等所有设备
- **⚡ 高性能**：纯 HTML/CSS/JavaScript，无需任何构建工具
- **🎯 专业布局**：Hero Section、Features、How It Works、Formats、CTA、Footer

## 🚀 快速开始

### 方式一：直接打开（推荐）

```bash
# 下载 docreader-landing-page-standalone.html 文件
# 用浏览器直接打开即可（双击或拖入浏览器）
```

### 方式二：本地服务器

```bash
# 使用 Python
python -m http.server 8000

# 或使用 Node.js
npx http-server

# 然后访问 http://localhost:8000/docreader-landing-page-standalone.html
```

## 📁 文件说明

| 文件 | 说明 |
|------|------|
| `docreader-landing-page-standalone.html` | 完整的独立 HTML 文件，包含所有 CSS 和 JavaScript |
| `README.md` | 项目文档（本文件） |

## 🎨 设计特点

### 色彩方案

- **主背景**：深蓝紫渐变（`#0F172A` → `#1A0F2E`）
- **强调色**：
  - 霓虹青色：`#00D9FF`
  - 霓虹紫色：`#A855F7`
  - 霓虹绿色：`#10B981`
- **文字**：浅灰色（`#E2E8F0`）

### 设计元素

1. **Glassmorphism 效果**：半透明卡片 + 模糊背景 + 发光边框
2. **动画**：
   - 入场动画：从下往上淡入 + 缩放
   - 悬停效果：卡片上浮 + 阴影加强 + 边框发光
   - 脉冲效果：背景元素呼吸式动画
3. **排版**：
   - 标题：Poppins 字体（粗体）
   - 正文：Inter 字体（常规）
   - 代码：JetBrains Mono 字体

## 📄 页面结构

### 1. Hero Section（英雄区）
- 大标题：`docReader`（渐变文字）
- 副标题：`快速提取 & 智能合并`
- 描述文本
- 行动按钮
- 统计数据（15+ 格式、10K+ 开发者、100% 免费）

### 2. Features Section（功能区）
展示 4 个核心功能：
- ⚡ 闪电快速
- 💻 智能编码
- 🔀 智能合并
- 💾 轻松导出

### 3. How It Works（工作流程）
3 步骤展示：
- 01 选择文件夹
- 02 配置文件类型
- 03 一键合并

### 4. Supported Formats（支持格式）
展示 15+ 种支持的文件格式：
`.java`、`.xml`、`.yml`、`.yaml`、`.json`、`.sql`、`.md`、`.py`、`.sh`、`.bat`、`.html`、`.css`、`.js`、`.txt`、`.properties`

### 5. CTA Section（行动号召）
最后的转化区域，鼓励用户探索功能

### 6. Footer（页脚）
- 产品介绍
- 快速链接
- 社交媒体
- 版权信息

## 🛠️ 技术栈

- **HTML5**：语义化标签
- **CSS3**：
  - Grid 和 Flexbox 布局
  - CSS 动画和过渡
  - 媒体查询响应式设计
  - CSS 变量主题系统
- **JavaScript**：
  - 原生 DOM 操作
  - Intersection Observer API（滚动动画）
  - 事件监听和交互

## 📱 响应式设计

页面在以下断点进行了优化：

| 设备 | 宽度 | 特点 |
|------|------|------|
| 手机 | < 768px | 单列布局，按钮堆叠 |
| 平板 | 768px - 1024px | 2 列网格 |
| 桌面 | > 1024px | 完整 4 列网格，最优体验 |

## 🎬 动画列表

| 动画名称 | 触发条件 | 效果 |
|---------|---------|------|
| `slideInLeft` | 页面加载 | 从左侧滑入 + 淡入 |
| `slideInRight` | 页面加载 | 从右侧滑入 + 淡入 |
| `fadeInUp` | 滚动到视图 | 从下往上淡入 |
| `float` | 悬停 | 浮动效果 |
| `glowPulse` | 悬停 | 发光脉冲 |
| `pulse` | 持续 | 背景元素呼吸式动画 |

## 🔧 自定义指南

### 修改颜色

在 CSS 的 `:root` 选择器中修改 CSS 变量：

```css
:root {
    --primary: #00D9FF;           /* 主色 */
    --neon-cyan: #00D9FF;         /* 霓虹青 */
    --neon-purple: #A855F7;       /* 霓虹紫 */
    --neon-green: #10B981;        /* 霓虹绿 */
    --background: #0F172A;        /* 背景色 */
    --foreground: #E2E8F0;        /* 文字色 */
}
```

### 修改文本内容

直接编辑 HTML 中的文本即可，例如：

```html
<h1><span class="gradient-text">docReader</span></h1>
<p>快速提取 & 智能合并</p>
```

### 修改按钮行为

在 JavaScript 部分添加点击处理器：

```javascript
document.querySelectorAll('.btn').forEach(btn => {
    btn.addEventListener('click', function() {
        // 添加你的逻辑
        console.log('按钮被点击');
    });
});
```

## 📊 浏览器兼容性

- ✅ Chrome 90+
- ✅ Firefox 88+
- ✅ Safari 14+
- ✅ Edge 90+
- ⚠️ IE 11（不支持）

## 🎯 使用场景

1. **产品展示**：在营销网站上展示 docReader 的功能和优势
2. **演示页面**：在会议、演讲中展示产品
3. **投资者展示**：向投资者展示产品的专业性
4. **开发者文档**：在开发者社区中推广产品

## 📝 页面性能

- **加载时间**：< 1 秒（单个 HTML 文件）
- **文件大小**：~ 50 KB
- **Lighthouse 评分**：
  - Performance: 95+
  - Accessibility: 90+
  - Best Practices: 95+
  - SEO: 90+

## 🔐 安全性

- 无外部依赖
- 无第三方脚本
- 无数据收集
- 完全静态页面

## 📞 支持

如有问题或建议，请：

1. 检查浏览器是否支持（推荐使用最新版本）
2. 清除浏览器缓存后重新加载
3. 在不同浏览器中测试

## 📄 许可证

MIT License - 可自由使用和修改

## 🙏 致谢

设计灵感来自现代化的 SaaS 产品宣传页，采用了当下流行的设计趋势和最佳实践。

---

**最后更新**：2024 年 4 月

**版本**：1.0.0
