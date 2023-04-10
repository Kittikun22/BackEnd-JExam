const mysql = require("mysql");

const db = mysql.createConnection({
  user: process.env.user,
  host: process.env.host,
  password: process.env.password,
  database: process.env.database,
});

const getAnswered = (req, res) => {
  const exam_id = req.body.exam_id;
  const user_id = req.body.user_id;

  db.query(
    "SELECT answer, score, fullScore, timeSpend, submit_at FROM exams_meta WHERE user_id =? AND exam_id = ?",
    [user_id, exam_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    }
  );
};


const getAllExam = (req, res) => {
  db.query(
    "SELECT exam_id , name, amount, detail, blueprint, pic, category_id, subject_id, favorite, release_at FROM exams",
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.json(result);
      }
    }
  );
};

const getExam = (req, res) => {
  const exam_id = req.params.exam_id;
  db.query(
    "SELECT exam_id, name, amount, detail, blueprint, pic, subject_name, category_name, favorite FROM exams INNER JOIN subject ON exams.subject_id = subject.subject_id INNER JOIN category ON exams.category_id = category.category_id  WHERE exam_id = ?",
    [exam_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    }
  );
};

const updateSelectItem = (req, res) => {
  const user_id = req.body.user_id;
  const itemSelected = req.body.itemSelected;

  db.query(
    "UPDATE users_meta SET itemSelected = ? WHERE user_id =? ",
    [itemSelected, user_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    }
  );
};

const getFavExams = (req, res) => {
  const user_id = req.body.user_id
  db.query("SELECT fav_exam FROM users_meta WHERE user_id = ?",
    user_id,
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result)
      }
    })
}

const updateFavExams = (req, res) => {
  const user_id = req.body.user_id
  const myFavExam = req.body.myFavExam

  db.query(
    "UPDATE users_meta SET fav_exam = ? WHERE user_id = ?",
    [myFavExam, user_id],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    }
  );
};

const increaseFavExams = (req, res) => {
  const exam_id = req.body.exam_id
  db.query("UPDATE exams SET favorite = favorite + 1 WHERE exam_id = ?",
    exam_id,
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result)
      }
    })
}

const decreaseFavExams = (req, res) => {
  const exam_id = req.body.exam_id
  db.query("UPDATE exams SET favorite = favorite - 1 WHERE exam_id = ?",
    exam_id,
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result)
      }
    })
}

const getTGAT = (req, res) => {
  db.query("SELECT exam_id , name, amount,  detail, blueprint, pic, category_id, subject_id, favorite, release_at FROM exams WHERE category_id = 1", (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.json(result);
    }
  });
};

const getTPAT = (req, res) => {
  db.query("SELECT exam_id , name, amount,  detail, blueprint, pic, category_id, subject_id, favorite, release_at FROM exams WHERE category_id = 2", (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.json(result);
    }
  });
};

const getALEVEL = (req, res) => {
  db.query("SELECT exam_id , name, amount,  detail, blueprint, pic, category_id, subject_id, favorite, release_at FROM exams WHERE category_id = 3", (err, result) => {
    if (err) {
      console.log(err);
    } else {
      res.json(result);
    }
  });
};

const getNETSAT = (req, res) => {
  db.query("SELECT exam_id , name, amount,  detail, blueprint, pic, category_id, subject_id, favorite, release_at FROM exams WHERE category_id = 4"
    , (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.json(result);
      }
    });
};

const getMostFav = (req, res) => {
  db.query("SELECT exam_id , name, amount, detail, blueprint, pic, category_id, subject_id, favorite, release_at FROM exams ORDER BY favorite DESC LIMIT 10"
    , (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.json(result)
      }
    }
  )
}

const getNewestExam = (req, res) => {
  db.query("SELECT exam_id , name, amount, detail, blueprint, pic, category_id, subject_id, favorite, release_at FROM exams ORDER BY release_at DESC LIMIT 10 "
    , (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.json(result)
      }
    })
}

module.exports = {
  getAnswered,
  getAllExam,
  getTGAT,
  getTPAT,
  getALEVEL,
  getNETSAT,
  getExam,
  updateSelectItem,
  getFavExams,
  increaseFavExams,
  updateFavExams,
  getMostFav,
  getNewestExam,
  decreaseFavExams
};
