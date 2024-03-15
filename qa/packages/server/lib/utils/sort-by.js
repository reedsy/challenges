export function by(key, order = 'asc') {
  return (a, b) => {
    a = `${a?.[key]}`;
    b = `${b?.[key]}`;
    const multiplier = order === 'asc' ? 1 : -1;
    return multiplier * a.localeCompare(b);
  };
}