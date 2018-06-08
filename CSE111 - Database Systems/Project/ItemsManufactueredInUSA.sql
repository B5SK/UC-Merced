SELECT p_name,
       p_type,
       m_name
  FROM part,
       manufacturer
 WHERE m_nationkey = 1;
