## 背景和目标

现在你已经熟悉了迁移和模型，是时候来一个真实场景了。如果没有任何**数据**，你如何测试你的数据库是否正常工作呢？为此，我们需要创建一堆数据，用来引导我们的数据库。这被称为`种子`。

### 给你的数据库添加数据

在创建数据库后添加一些数据，你可以从填写`db/seeds.rb`文件开始，其中包含一些你想要执行的Ruby命令。例如，如果你想创建3篇文章：

```ruby
# db/seeds.rb
Post.create(title: "我的第一篇文章", url: "https://www.blog.com/my-first-post", 投票数: 13)
Post.create(title: "我的第二篇文章", url: "https://www.blog.com/my-second-post", 投票数: 42)
Post.create(title: "我的第三篇文章", url: "https://www.blog.com/my-third-post", 投票数: 128)
```

或者如果你想创建10篇：

```ruby
# db/seeds.rb
10.times do |i|
  Post.create(title: "我的第#{i}篇文章")
end
```

然后可以通过在终端中运行以下命令来执行此文件：

```bash
rake db:seed
```

### 伪造数据

当你向数据库中填充数据时，你可能希望它看起来像真实用户数据，而不必费力找灵感并亲自编写。在这种情况下，你可以使用[faker](https://github.com/faker-ruby/faker)库生成虚假数据。让我们安装它：

```bash
gem install faker
```

然后你可以在你的`db/seeds.rb`文件中使用它：

```ruby
# db/seeds.rb
require "faker"

Post.create(title: Faker::Music.band, url: Faker::Sports::Football.player, 投票数: 2)
```

探索[faker库文档](https://github.com/faker-ruby/faker)以找到适合生成看起来真实数据的模块。

### 重置你的数据库

以下是一个有用的命令，可以`删除`你的数据库，`重新创建`它，`迁移`架构并`填充`它。在构建种子时，这将节省大量时间，并且在项目周中会经常使用，所以要习惯它！

```bash
rake db:drop db:create db:migrate db:seed
```

一旦重置了你的数据库，你可以在`rake控制台`中查询你的数据库，例如：

```ruby
Post.all
```

## 规格

打开`db/seeds.rb`文件，并编写一些代码，插入100篇文章，使用[`faker`](https://github.com/faker-ruby/faker)库生成的虚假数据。里面有很多有趣的faker选项，所以要有创意 😊。看看这里的选项[这里](https://github.com/faker-ruby/faker#faker)！
