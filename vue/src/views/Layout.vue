<template>
  <div>
    <!-- 头部区域 -->
    <div style="height: 125px; line-height: 125px; background-color: background-color: rgb(188, 211, 236); margin-bottom: 2px; display: flex">
      <div>
        <img src="@/assets/logo.png" alt="" style="width: 1330px; position: relative">
      </div>
      <div style="flex: 1; text-align: right; padding-right: 20px">
        <el-dropdown size="medium">
          <span class="el-dropdown-link" style="cursor: pointer">
            {{ admin.username }}<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown" style="margin-top: -5px">
            <el-dropdown-item><div style="width: 50px; text-align: center;" @click="logout">退出</div></el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </div>
    </div>

    <!-- 侧边栏和主体 -->
    <div style="display: flex; background-color: rgb(188, 211, 236)">
      <!-- 侧边栏导航 -->
      <div style="margin-top: 2px; width: 200px; min-height: calc(100vh - 62px); overflow: hidden; margin-right: 2px; background-color: rgb(166, 211, 236)">
        <el-menu :default-active="$route.path" router class="el-menu-demo" style="margin-bottom: 10px">
          <el-menu-item index="/">
            <i class="el-icon-s-home"></i>
            <span>首页</span>
          </el-menu-item>
          <el-submenu index="user">
            <template slot="title">
              <i class="el-icon-s-custom"></i>
              <span>会员管理</span>
            </template>
            <el-menu-item index="/addUser">会员添加</el-menu-item>
            <el-menu-item index="/userList">会员列表</el-menu-item>
          </el-submenu>
          <el-submenu index="admin">
            <template slot="title">
              <i class="el-icon-user"></i>
              <span>管理员管理</span>
            </template>
            <el-menu-item index="/addAdmin">管理员添加</el-menu-item>
            <el-menu-item index="/adminList">管理员列表</el-menu-item>
          </el-submenu>
          <el-submenu index="category">
            <template slot="title">
              <i class="el-icon-s-operation"></i>
              <span>图书分类管理</span>
            </template>
            <el-menu-item index="/addCategory">图书分类添加</el-menu-item>
            <el-menu-item index="/categoryList">图书分类列表</el-menu-item>
          </el-submenu>
          <el-submenu index="book">
            <template slot="title">
              <i class="el-icon-s-management"></i>
              <span>图书管理</span>
            </template>
            <el-menu-item index="/addBook">图书添加</el-menu-item>
            <el-menu-item index="/bookList">图书列表</el-menu-item>
          </el-submenu>
          <el-submenu index="borrow">
            <template slot="title">
              <i class="el-icon-notebook-1"></i>
              <span>借书管理</span>
            </template>
            <el-menu-item index="/addBorrow">借书添加</el-menu-item>
            <el-menu-item index="/borrowList">借书列表</el-menu-item>
          </el-submenu>
          <el-submenu index="retur">
            <template slot="title">
              <i class="el-icon-notebook-2"></i>
              <span>还书管理</span>
            </template>
            <el-menu-item index="/returList">还书列表</el-menu-item>
          </el-submenu>
        </el-menu>
      </div>

      <!-- 主体数据 -->
      <!-- width: 0; 可以限制容器的宽度，不被子元素无限撑开-->
      <div style="flex: 1; width: 0; background-color: rgb(188, 211, 236); padding: 10px">
        <router-view />
      </div>
    </div>
  </div>
</template>

<script>
import Cookies from 'js-cookie'

export default {
  name: "Layout.vue",
  data() {
    return {
      admin: Cookies.get('admin') ? JSON.parse(Cookies.get('admin')) : {}
    }
  },
  methods: {
    logout() {
      // 清除浏览器用户数据
      Cookies.remove('admin')
      this.$router.push('/login')
    }
  }
}
</script>

<style scoped>

</style>