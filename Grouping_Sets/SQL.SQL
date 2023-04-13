--일반 GROUP BY
SELECT 고객명, 사원명, 년도, SUM(판매액) AS 판매액
FROM 판매테이블
GROUP BY 고객명, 사원명, 년도;

--GROUP BY GROUPING SETS를 활용한 동일한 결과물
SELECT 고객명, 사원명, 년도, SUM(판매액) AS 판매액
FROM 판매테이블
GROUP BY GROUPING SETS(
(고객명, 사원명, 년도)
);

--GROUP BY GROUPING SETS를 활용한 필드 개별 GROUP BY
SELECT 고객명, 사원명, 년도, SUM(판매액) AS 판매액
FROM 판매테이블
GROUP BY GROUPING SETS(
고객명, 사원명, 년도
);
