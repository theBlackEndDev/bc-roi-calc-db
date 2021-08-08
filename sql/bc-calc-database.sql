-- Create database and provision user
ALTER DATABASE bc_roi_calc_db OWNER TO jscott;
CREATE EXTENSION IF NOT EXISTS plpgsql;
CREATE EXTENSION IF NOT EXISTS pgcrypto;
