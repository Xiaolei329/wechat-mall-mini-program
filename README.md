# wechat-mall-mini-program

基于微信小程序的网上商城示例项目，仓库包含：

- 小程序前端：`/mp-weixin`
- Java 后端（SSM + MyBatis-Plus）：`/ssmxin`
- 数据库脚本：`/db.sql`

## 项目结构

```text
.
├── mp-weixin/                  # 微信小程序端
├── ssmxin/                     # Java Web 后端（WAR）
│   ├── src/main/java/com/      # Controller/Service/DAO/Entity
│   ├── src/main/resources/     # Spring 与数据库配置
│   └── src/main/webapp/        # 管理端页面与静态资源
├── db.sql                      # MySQL 初始化脚本
├── project.config.json         # 小程序项目配置（含 appid）
└── 配置文件.txt                 # 项目说明（含后台地址等）
```

## 技术栈（按仓库现有代码）

- 小程序：原生微信小程序（`app.json` / `*.wxss` / `*.js`）
- 后端：Spring 5、Spring MVC、MyBatis-Plus、Maven
- 数据库：MySQL（`ssm913sv`）

## 本地运行（后端）

1. 创建数据库并导入脚本：
   - 执行 `/db.sql`
   - 默认数据库名：`ssm913sv`

2. 配置数据库连接：
   - 文件：`/ssmxin/src/main/resources/config.properties`
   - 当前仓库默认示例：
     - `jdbc_url=jdbc:mysql://127.0.0.1:3306/ssm913sv?...`
     - `jdbc_username=root`
     - `jdbc_password=admin`

3. 使用 Maven 构建：

   ```bash
   cd ssmxin
   mvn clean package
   ```

4. 部署生成的 WAR（`ssm913sv.war`）到 Tomcat 后访问：
   - 管理端：`http://localhost:8080/ssm913sv/admin/dist/index.html`

## 本地运行（小程序）

1. 使用微信开发者工具导入仓库根目录。
2. 小程序配置位于 `project.config.json`，项目类型为 `miniprogram`。
3. 页面入口配置位于 `mp-weixin/app.json`。

## 功能页面（来自 `mp-weixin/app.json`）

已配置页面包括：

- 登录/注册/找回密码
- 首页、商品信息、购物车、下单、地址管理、订单
- 用户中心、个人资料、在线客服
- 新闻、留言、商品评论、收藏等

## 说明

- 若出现依赖下载问题，请优先检查 `ssmxin/pom.xml` 中依赖是否可从当前 Maven 仓库获取。
