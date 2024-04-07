export default function authHeader() {
  const userStr = localStorage.getItem("user");
  let user = null;
  if (userStr)
    user = JSON.parse(userStr);

  if (user && user.token) {
    return { Authorization: 'Bearer ' + user.token };
  } else {
    return { Authorization: '' }; // for Spring Boot back-end
    // return { 'x-access-token': null }; // for Node Express back-end
  }
}