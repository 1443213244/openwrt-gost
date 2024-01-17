// 在DOM加载完成后运行代码
document.addEventListener("DOMContentLoaded", function() {
  // 获取配置表单元素
  var form = document.getElementById("gost-form");

  // 监听表单提交事件
  form.addEventListener("submit", function(event) {
    event.preventDefault(); // 阻止表单默认提交行为

    // 获取表单字段值
    var name = document.getElementById("name").value;
    var address = document.getElementById("address").value;
    var port = document.getElementById("port").value;
    var password = document.getElementById("password").value;
    var protocol = document.getElementById("protocol").value;

    // 执行提交逻辑，例如发送到服务器或保存到本地存储
    // 这里只是简单打印字段值
    console.log("Name:", name);
    console.log("Address:", address);
    console.log("Port:", port);
    console.log("Password:", password);
    console.log("Protocol:", protocol);

    // 清空表单字段值
    form.reset();
  });
});