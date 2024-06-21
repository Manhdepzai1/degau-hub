const Discord = require('discord.js');
const client = new Discord.Client();

// Sự kiện khi bot đã sẵn sàng hoạt động
client.on('ready', () => {
  console.log(`Logged in as ${client.user.tag}!`);
});

// Sự kiện khi bot nhận được tin nhắn mới
client.on('message', msg => {
  // Phản hồi khi có ai đó gửi tin nhắn "ping"
  if (msg.content.toLowerCase() === 'ping') {
    msg.reply('Pong!');
  }
});

// Token của bot từ Developer Portal Discord
const token = 'MTI1MzU1NzU3OTYxMTYzOTg3MA.GijsyE.9E-qVVBW6wsKmNCgOqqn3hsHUo4lxPMP09dWRo';

// Đăng nhập vào Discord với token
client.login(token);
