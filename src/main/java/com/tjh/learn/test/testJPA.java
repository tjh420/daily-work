//package com.tjh.learn.test;
//
///**
// * Created by tjh on 2018/4/26.
// */
//public class testJPA {
//    //需要查询的对象
//    public class Qfjbxxdz {
//        @Id
//        @GeneratedValue(generator = "system-uuid")
//        @GenericGenerator(name = "system-uuid", strategy = "uuid.hex")
//        private String id;
//        @OneToOne
//        @JoinColumn(name = "qfjbxx")
//        private Qfjbxx qfjbxx;
//
//        //关联表
//        private String fzcc;
//        private String fzccName;
//        @ManyToOne
//        @JoinColumn(name = "criminalInfo")
//        private CriminalInfo criminalInfo;
//
//        //关联表
//        @Column(length = 800)
//        private String bz; //get/set...... }
//
//        // 创建构造Specification的方法 //这里我传入两个条件参数因为与前段框架有关，你们写的时候具体自己业务自行决断
//        private Specification<Qfjbxxdz> getWhereClause(final JSONArray condetion, final JSONArray search) {
//            return new Specification<Qfjbxxdz>() {
//                @Override
//                public Predicate toPredicate(Root<Qfjbxxdz> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
//                    List<Predicate> predicate = new ArrayList<>();
//                    Iterator<JSONObject> iterator = condetion.iterator();
//                    Predicate preP = null;
//                    while (iterator.hasNext()) {
//                        JSONObject jsonObject = iterator.next();
//                        //注意：这里用的root.join 因为我们要用qfjbxx对象里的字段作为条件就必须这样做join方法有很多重载，使用的时候可以多根据自己业务决断
//                        /
//                        Predicate p1 = cb.equal(root.join("qfjbxx").get("id").as(String.class), jsonObject.get("fzId").toString());
//                        Predicate p2 = cb.equal(root.get("fzcc").as(String.class), jsonObject.get("ccId").toString());
//                        if (preP != null) {
//                            preP = cb.or(preP, cb.and(p1, p2));
//                        } else {
//                            preP = cb.and(p1, p2);
//                        }
//                    } JSONObject jsonSearch = (JSONObject) search.get(0);
//                    Predicate p3 = null;
//                    if (null != jsonSearch.get("xm") && jsonSearch.get("xm").toString().length() > 0) {
//                        p3 = cb.like(root.join("criminalInfo").get("xm").as(String.class), "%" + jsonSearch.get("xm").toString() + "%");
//                    }
//                    Predicate p4 = null;
//                    if (null != jsonSearch.get("fzmc") && jsonSearch.get("fzmc").toString().length() > 0) {
//                        p4 = cb.like(root.join("qfjbxx").get("fzmc").as(String.class), "%" + jsonSearch.get("fzmc").toString() + "%");
//                    }
//                    Predicate preA;
//                    if (null != p3 && null != p4) {
//                        Predicate preS = cb.and(p3, p4);
//                        preA = cb.and(preP, preS);
//                    } else if (null == p3 && null != p4) {
//                        preA = cb.and(preP, p4);
//                    } else if (null != p3 && null == p4) {
//                        preA = cb.and(preP, p3);
//                    } else {
//                        preA = preP;
//                    }
//                    predicate.add(preA);
//                    Predicate[] pre = new Predicate[predicate.size()];
//                    query.where(predicate.toArray(pre));
//                    return query.getRestriction();
//                }
//            }
