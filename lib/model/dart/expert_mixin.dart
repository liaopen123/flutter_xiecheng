mixin Expert {
  //发现和解决问题
  bool solveProblem = false;

  //
  bool dataStructureAndAlgorithms = false;

  bool architectureDesign = false;

  bool performanceOptimization = false;

  bool computerSystem = false;

  void develop() {
    if (solveProblem) {
      print("解决问题");
    }
    if (dataStructureAndAlgorithms) {
      print("会数据结构和算法");
    }
    if (architectureDesign) {
      print("结构设计");
    }

    if (performanceOptimization) {
      print("性能优化");
    }

    if (computerSystem) {
      print("计算机系统");
    }
  }
}

mixin Efficient {
  void getEfficientAttrs() {
    print("有效率的");
  }
}

mixin Kind {
  void getKindAttr() {
    print("和蔼可亲，温文尔雅");
  }
}

class SoftwareArchitect {
  SoftwareArchitect() {
    print("软件架构");
  }
}
